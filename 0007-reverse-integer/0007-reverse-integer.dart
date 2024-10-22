class Solution {
  int reverse(int x) {
    bool isNegative = x < 0;
    int r = 0;
    if (isNegative) {
      x = x * -1;
    }
    while (x > 0) {
      r = r * 10;
      r += x % 10;
      x = x ~/ 10;
    }
    if (r > 2147483647 || x<-2147483647) {
      return 0;
    }
    if (isNegative) {
      return r * -1;
    }
    return r;
  }
}