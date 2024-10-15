class Solution {
   bool checkPerfectNumber(int num) {
    int totalDiv = 0;
    for (int i = 1; i < num; i++) {
      if (num % i == 0) {
        totalDiv += i;
      }
    }
    return num == totalDiv;
  }
}