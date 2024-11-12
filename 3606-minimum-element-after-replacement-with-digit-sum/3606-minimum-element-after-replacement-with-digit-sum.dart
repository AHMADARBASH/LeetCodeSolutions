class Solution {
   int minElement(List<int> nums) {
    var res = [];
    for (var num in nums) {
      int temp = 0;
      while (num >= 1) {
        temp = temp + num % 10;
        num = num ~/ 10;
      }
      if (res.isNotEmpty) {
        if (res[0] > temp) {
          res[0] = temp;
        }
      } else {
        res.add(temp);
      }
    }
    return res[0];
  }
}