class Solution {
  int alternateDigitSum(int n) {
    var nn = n.toString();
    bool isPos = true;
    int sum = 0;
    for (int i = 0; i < nn.length; i++) {
      if (isPos) {
        sum = sum + (int.parse(nn[i]));
      } else {
        sum = sum + (int.parse(nn[i]) * -1);
      }
      isPos = !isPos;
    }
    return sum;
  }
}