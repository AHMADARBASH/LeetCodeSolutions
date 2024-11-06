class Solution {
  String getEncryptedString(String s, int k) {
    List<String> ss = [];
    for (int i = 0; i < s.length; i++) {
      ss.add(s[(i + k) % s.length]);
    }
    return ss.join('');
  }
}