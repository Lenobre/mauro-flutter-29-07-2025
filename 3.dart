import 'dart:core';

void main() {
  DateTime now = DateTime.now();
  int today = now.day;
  int year = now.year;
  int month = now.month;

  DateTime firstDayOfMonth = DateTime(year, month, 1);

  int startWeekday = firstDayOfMonth.weekday % 7;

  print("| D | S | T | Q | Q | S | S |");

  String line = "";

  for (int i = 0; i < startWeekday; i++) {
    line += "    ";
  }

  for (int day = 1; day <= today; day++) {
    line += day.toString().padLeft(2, ' ').padRight(4, ' ');

    DateTime currentDate = DateTime(year, month, day);
    int currentWeekday = currentDate.weekday % 7;

    if (currentWeekday == 6) {
      print(line);
      line = "";
    }
  }

  if (line.isNotEmpty) {
    print(line);
  }
}
