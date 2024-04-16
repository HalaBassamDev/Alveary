import 'package:intl/intl.dart';

class variable {
  static var name = 'Emma Joanne';
  static var annul = 8.34;
  static var sick = 12.00;
  static bool start = false;
  static bool end = false;

  static bool isCheck = false;
  static String? checkInDate;
  static String? checkInTime;
  static String? checkOutDate;
  static String? checkOutTime;

  //attendance Report
  static DateTime currentMonth = DateTime.now();
  static String getFormattedCurrentMonth() {
    return DateFormat('MMMM yyyy').format(currentMonth);
  }

  static List<Map<String, String>> attendance = [];

  static void addAttendance(
      String date, String checkInTime, String checkOutTime) {
    DateTime checkInDateTime = DateFormat('hh:mm a').parse(checkInTime);
    DateTime checkOutDateTime = DateFormat('hh:mm a').parse(checkOutTime);
    double difference = calculateTotalHours(checkInDateTime, checkOutDateTime);
    attendance ??= [];
    attendance.add({
      'date': date,
      'checkInTime': checkInTime,
      'checkOutTime': checkOutTime,
      'difference': difference.toStringAsFixed(2),
    });
  }

  static String getCurrentDate() {
    var date = DateTime.now();
    var formattedDate = DateFormat('E dd, MMM').format(date);
    return formattedDate;
  }

  static String getTime() {
    var time = DateTime.now();
    var formattedTime = DateFormat('hh:mm a').format(time);
    return formattedTime;
  }

  static double calculateTotalHours(
      DateTime checkInTime, DateTime checkOutTime) {
    if (checkInTime == checkOutTime)
      return 0;
    else {
      Duration difference = checkOutTime.difference(checkInTime);
      double totalHours = difference.inMinutes / 60;
      return totalHours;
    }
  }
}
