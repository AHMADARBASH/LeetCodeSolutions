class Solution {
 void moveZeroes(List<int> nums) {
    int c = nums.length;
    nums.removeWhere((e) => e == 0);
    nums.addAll(List.generate(c - nums.length, (i) => 0));
  }
}