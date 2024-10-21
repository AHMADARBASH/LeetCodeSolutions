class Solution {
  bool validRest(String s) {
    int i = 0;
    int j = s.length - 1;
    while (i <= j) {
      if (s[i] != s[j]) {
        return false;
      }
      i++;
      j--;
    }
    return true;
  }

  bool validPalindrome(String s) {
    int i = 0;
    int j = s.length - 1;
    while (i <= j) {
      if (s[i] != s[j]) {
        var lastS = s.substring(0, j) + s.substring(j + 1);
        var firstS = s.substring(0, i) + s.substring(i + 1, s.length);
        return validRest(lastS) || validRest(firstS);
      }
      i++;
      j--;
    }
    return true;
  }
}