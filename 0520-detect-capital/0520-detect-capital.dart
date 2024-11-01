class Solution {
 bool detectCapitalUse(String word) {
    bool IsFirstCap = false;
    if (word.codeUnitAt(0) < 91) {
      IsFirstCap = true;
    }
    int allCaps = 0;
    for (int i = 0; i < word.length; i++) {
      if (word.codeUnitAt(i) < 91) {
        allCaps++;
      }
    }
    return IsFirstCap && allCaps == 1 ||
        !IsFirstCap && allCaps == 0 ||
        allCaps == word.length;
  }
}