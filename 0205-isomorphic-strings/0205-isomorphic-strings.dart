class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    Map<String, String> sMap = {};
    Map<String, String> tMap = {};

    for (int i = 0; i < s.length; i++) {
      String sChar = s[i];
      String tChar = t[i];
      if (sMap.containsKey(sChar)) {
        if (sMap[sChar] != tChar) {
          return false;
        }
      } else {
        sMap[sChar] = tChar;
      }
      if (tMap.containsKey(tChar)) {
        if (tMap[tChar] != sChar) {
          return false;
        }
      } else {
        tMap[tChar] = sChar;
      }
    }

    return true;
  }
}