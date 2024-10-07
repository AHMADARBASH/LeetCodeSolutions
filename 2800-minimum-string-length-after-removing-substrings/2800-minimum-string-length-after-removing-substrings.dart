class Solution {
  int minLength(String s) {
    var ss = s.split('');
    for (int i = 0; i < ss.length - 1; i++) {
      if (ss[i] == 'A' && ss[i + 1] == 'B' ||
          ss[i] == 'C' && ss[i + 1] == 'D') {
        ss.removeAt(i);
        ss.removeAt(i);
        i = -1;
      }
    }
    return ss.length;
  }
}