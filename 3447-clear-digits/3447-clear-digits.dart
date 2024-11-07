class Solution {
   String clearDigits(String s) {
    List<String> res = [];
    for (int i = 0; i < s.length; i++) {
      if (int.tryParse(s[i]) == null) {
        res.add(s[i]);
      } else {
        res.removeLast();
      }
    }
    return res.join('');
  }
}