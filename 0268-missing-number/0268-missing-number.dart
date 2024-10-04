class Solution {
 int missingNumber(List<int> nums) {
    nums.sort();
    var x = [for (var i = 0; i <= nums.length; i++) i];
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != x[i]) {
        return x[i];
      } else if (i == nums.length - 1) {
        return nums.last + 1;
      }
    }
    return 0;
  }
}