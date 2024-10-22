class Solution {
 int mySqrt(int x) {
    int i = 0;
    while (i * i <= x) {
      if (i * i > x) {
        break;
      } else {
        i++;
      }
    }
    return i - 1;
  }
}