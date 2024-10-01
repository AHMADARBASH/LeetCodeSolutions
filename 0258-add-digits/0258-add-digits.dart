class Solution {
 int addDigits(int num) {
    if (num < 10) {
      return num;
    } else {
      List<int> temps = [];
      while (num >= 10) {
        temps.add(num ~/ 10);
        num = num % 10;
      }
      temps.add(num);
      var sum = 0;
      for (int i = 0; i < temps.length; i++) {
        sum += temps[i];
      }
      if (sum < 10) {
        return sum;
      } else {
        return addDigits(sum);
      }
    }
  }
}