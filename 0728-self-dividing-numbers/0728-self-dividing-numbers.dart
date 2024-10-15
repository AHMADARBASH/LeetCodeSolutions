class Solution {
  bool isDevisble(int n) {
    if (n % 10 == 0) {
      return false;
    }
    int newN = n;
    while (newN > 1) {
      int temp = newN % 10;
      if (temp == 0) {
        return false;
      }else if (n % temp == 0) {
        newN = newN - temp;
        newN = newN ~/ 10;
      } else {
        return false;
      }
    }
    return true;
  }

  List<int> selfDividingNumbers(int left, int right) {
    List<int> result = [];
    for (int i = left; i <= right; i++) {
      if (i < 10) {
        result.add(i);
      } else {
        if (isDevisble(i)) {
          result.add(i);
        }
      }
    }
    return result;
  }
}