class Solution {
   bool wordPattern(String pattern, String s) {
    if (pattern.split('').toSet().length != s.split(' ').toSet().length) {
      return false;
    }
    if (pattern.split('').length != s.split(' ').length) {
      return false;
    }
    Map<String, List<String>> data = {};
    var newS = s.split(' ');
    for (int i = 0; i < pattern.length; i++) {
      if (data.containsKey(pattern[i])) {
        data[pattern[i]]!.add(newS[i]);
      } else {
        data[pattern[i]] = [newS[i]];
      }
    }
    bool hasMoreThanValue = false;
    data.forEach((k, v) {
      if (v.toSet().length > 1) {
        hasMoreThanValue = true;
      }
    });
    return !hasMoreThanValue;
  }
}