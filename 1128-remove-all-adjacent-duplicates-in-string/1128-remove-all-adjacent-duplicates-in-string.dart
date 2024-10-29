class Solution {
 String removeDuplicates(String s) {
    var ss = [];
    for (int i = 0; i < s.length; i++) {
      if (ss.isNotEmpty && s[i] == ss[ss.length - 1]) {
        ss.removeLast();
      } else {
        ss.add(s[i]);
      }
    }
    return ss.join('');
  }
}