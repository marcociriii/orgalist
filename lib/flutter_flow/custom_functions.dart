import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

DateTime dayBackk(DateTime date) {
  return date.subtract(const Duration(days: 1));
}

DateTime dayForward(DateTime date) {
  return date.add(const Duration(days: 1));
}

List<dynamic> algorithmFilter(
  List<dynamic>? list,
  DateTime date,
) {
  if (list == null || list.isEmpty) {
    return [];
  }

  List<dynamic> filteredList = [];

  for (var item in list) {
    var newItem = {}; // Create a new map to hold the modified item

    if (item['repeat'] == true && item['repeatSettings'] != null) {
      DateTime startDate = DateFormat('dd/MM/yyyy').parse(item['startDate']);
      DateTime endDate;

      if (item['repeatSettings']['endDate'] == null ||
          item['repeatSettings']['endDate'] == '' ||
          item['repeatSettings']['endDate'] == 'NONOBBLIGATORIO') {
        endDate = DateTime(2050, 12, 31);
      } else {
        endDate =
            DateFormat('dd/MM/yyyy').parse(item['repeatSettings']['endDate']);
      }

      if ((date.isAtSameMomentAs(startDate) || date.isAfter(startDate)) &&
          (date.isAtSameMomentAs(endDate) || date.isBefore(endDate))) {
        String typeRepeat = item['repeatSettings']['typeRepeat'];
        int numFreq;

        switch (typeRepeat) {
          case 'daily':
            numFreq = item['repeatSettings']['dailyNumFreq'];
            if (date.difference(startDate).inDays % numFreq == 0) {
              newItem = item;
            }
            break;
          case 'weekly':
            numFreq = item['repeatSettings']['weeklyNumFreq'];
            if (date.difference(startDate).inDays ~/ 7 % numFreq == 0 &&
                item['repeatSettings']['weeklyDayWeek']
                    .contains(date.weekday.toString())) {
              newItem = item;
            }
            break;
          case 'monthly':
            numFreq = item['repeatSettings']['monthlyNumFreq'];
            if (date.month -
                        startDate.month +
                        12 * (date.year - startDate.year) % numFreq ==
                    0 &&
                item['repeatSettings']['monthlyDayNumber'].contains(date.day)) {
              newItem = item;
            }
            break;
          case 'yearly':
            numFreq = item['repeatSettings']['yearlyNumFreq'];
            if (date.year - startDate.year % numFreq == 0 &&
                item['repeatSettings']['yearlyMonth']
                    .contains(date.month.toString())) {
              newItem = item;
            }
            break;
        }
      }
    }

    // Check if the 'done' field exists and if it contains the 'date'
    if (item['done'] != null) {
      for (var doneItem in item['done']) {
        if (doneItem[DateFormat('dd/MM/yyyy').format(date).toString()] !=
            null) {
          newItem['done'] = true;
          if (doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                      ['comments'] !=
                  null &&
              doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                      ['comments']
                  .toString()
                  .isNotEmpty) {
            newItem['comments'] =
                doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                    ['comments'];
          }
          if (doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                      ['subcatDone'] !=
                  null &&
              doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                      ['subcatDone']
                  .toString()
                  .isNotEmpty) {
            newItem['subcatDone'] =
                doneItem[DateFormat('dd/MM/yyyy').format(date).toString()]
                    ['subcatDone'];
          }
          break;
        }
      }
    }

    if (newItem.isNotEmpty && newItem['done'] == true) {
      filteredList.add(newItem);
    }
  }

  return filteredList;
}
