class Solution {
 int mySqrt(int x) {
    int i = 0;
    while (i * i <= x) {
      if (i * i > x) {
        return i - 1;
      } else {
        i++;
      }
    }
    return i - 1;
  }
}