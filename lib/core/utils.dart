import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

double navBarHeight = 62;

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

String timestampToString(int timestamp) {
  // timestamp to 22.06.2000
  try {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd.MM.yyyy').format(date);
  } catch (e) {
    return 'Error';
  }
}

String dateToString(DateTime date) {
  // DateTime to 22.06.2000
  try {
    return DateFormat('dd.MM.yyyy').format(date);
  } catch (e) {
    return 'Error';
  }
}

String timeToString(DateTime time) {
  // DateTime to 22:00
  try {
    return DateFormat('HH:mm').format(time);
  } catch (e) {
    return 'Error';
  }
}

DateTime stringToDate(String date) {
  // 22.06.2000 to DateTime
  try {
    return DateFormat('dd.MM.yyyy').parse(date);
  } catch (e) {
    return DateTime.now();
  }
}

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

bool getButtonActive(List<TextEditingController> controllers) {
  for (TextEditingController controller in controllers) {
    if (controller.text.isEmpty) return false;
  }
  return true;
}

void logger(Object message) {
  try {
    developer.log(message.toString());
  } catch (e) {
    debugPrint(e.toString());
  }
}

void precacheImages(BuildContext context) {
  try {
    List<String> imageAssets = [
      'assets/onboard1.png',
      'assets/onboard2.png',
    ];
    for (String assets in imageAssets) {
      precacheImage(AssetImage(assets), context);
    }
  } catch (e) {
    logger(e);
  }
}

String getCategorySvg(String cat) {
  if (cat == 'Business') return 'assets/category/cat1.svg';
  if (cat == 'Salary') return 'assets/category/cat2.svg';
  if (cat == 'Dividends') return 'assets/category/cat3.svg';
  if (cat == 'Rent') return 'assets/category/cat5.svg';
  if (cat == 'Freelance') return 'assets/category/cat6.svg';
  if (cat == 'Procurement') return 'assets/category/cat7.svg';
  if (cat == 'Food') return 'assets/category/cat8.svg';
  if (cat == 'Transport') return 'assets/category/cat9.svg';
  if (cat == 'Rest') return 'assets/category/cat10.svg';
  if (cat == 'Investment') return 'assets/category/cat11.svg';
  return 'assets/category/cat1.svg';
}
