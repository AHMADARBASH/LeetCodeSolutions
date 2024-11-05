class Solution {
  List<int> separateDigits(List<int> nums) {
    List<int> res = [];
    for (var num in nums) {
      List<int> temp = [];
      while (num >= 1) {
        temp.add(num % 10);
        num = num ~/ 10;
      }
      temp = temp.reversed.toList();
      res.addAll(temp);
    }
    return res;
  }
}