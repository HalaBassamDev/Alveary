import 'package:intl/intl.dart';

class employeeVar {
  static String employeeName = "Eman Mohammad";
  static String companyName = "Al-Hadaff ";
  static String department = "IT department";
  static int employeeid = 20366;
  static DateFormat dateFormat = DateFormat('dd MMM, yyyy');
  static DateTime employmentDate = DateTime(2022, 1, 20);
  static String formattedempDate = dateFormat.format(employmentDate);
  static DateFormat expiryDateformat = DateFormat('dd MMM, yyyy');
  static DateTime expiryDate = DateTime(2023, 1, 20);
  static String formatedexpiryDate = dateFormat.format(expiryDate);
  static String jobTitle = "Full Stack developer";
  static double socialSecurity = 52;
  static double baseSalary = 740.30;
  static double deduction = 0;
  static double incentives = 17;
  static double healthincurance = 20.1;
  static double salary = 683.3;
}
