class Solution {
  String removeStars(String s) {
    var ss = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] != '*') {
        ss.add(s[i]);
      } else {
        if (ss.isNotEmpty) {
          ss.removeLast();
         
        }
      }
    }
    return ss.join('');
  }
    
}