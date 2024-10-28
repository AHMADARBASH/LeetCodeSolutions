class Solution {
    int dayOfYear(String date) {
    List<int> dayPerMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    var day = int.parse(date[date.length - 2] + date[date.length - 1]);
    var month = int.parse(date.substring(5, 7));
    var year = int.parse(date.substring(0, 4));

    var isLeap = year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
    var days = 0;
    if (month == 1) {
      return day;
    }
    for (int i = 0; i < month - 1; i++) {
      if (i == 1) {
        if (isLeap) {
          days += 29;
        } else {
          days += dayPerMonth[i];
        }
      } else {
        days += dayPerMonth[i];
      }
    }
    return days + day;
  }
}