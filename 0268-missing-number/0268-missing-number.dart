class Solution {
 int missingNumber(List<int> nums) {
    var totalX = 0;
    var totalN = 0;
    for (var i = 0; i <= nums.length; i++) {
      totalX += i;
    }
    for (final n in nums) {
      totalN += n;
    }
    return totalX - totalN;
  }
}