class Solution {
 bool isPowerOfTwo(int n) { if (n % 2 != 0&& n!=1||n<0) {
      return false;
    }
    String x = n.toRadixString(2);
    var bits = 0;
    for (int i = 0; i < x.length; i++) {
      if (x[i] == '1') {
        bits++;
      }
    }
    return bits == 1;
  }
}