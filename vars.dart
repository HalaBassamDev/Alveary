import 'package:intl/intl.dart';

class variable {
  static DateTime date = DateTime.now();
  static DateFormat nowDateformat = DateFormat('E,d,MMM');
  static String formateddate = nowDateformat.format(date);
  static List<Map<int, List>> employeesAttend = [
    {
      1: [
        'Micheal Devies',
        'Grace Wilson',
        'Olivia Green',
        'Noor Green',
        'Emmily warson',
        'Ali Gosh',
        'Albert Dera',
        'Emma warson',
        'Kareem Saed'
      ]
    },
    {
      2: [
        'Mark Devies',
        'Hadeel Mark',
        'Daiv Devies',
        'nooh Devies',
        'mohammad jason'
      ]
    },
    {
      3: [
        'Jenny Wilson',
        'Golf Mark',
        'Daiv Devies',
        'Noor Devies',
        'Emma Walson'
      ]
    }
  ];
}
