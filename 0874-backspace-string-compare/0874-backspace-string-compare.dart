class Solution {
  bool backspaceCompare(String s, String t) {
    var ss = [];
    var tt = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '#') {
        if (ss.isNotEmpty) {
          ss.removeLast();
        }
      } else {
        ss.add(s[i]);
      }
    }
    for (int i = 0; i < t.length; i++) {
      if (t[i] == '#') {
        if (tt.isNotEmpty) {
          tt.removeLast();
        }
      } else {
        tt.add(t[i]);
      }
    }
    return ss.join('') == tt.join('');
  }
}