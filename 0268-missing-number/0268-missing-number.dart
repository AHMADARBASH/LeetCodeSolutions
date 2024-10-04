class Solution {
 int missingNumber(List<int> nums) {
    var x = [for (var i = 0; i <= nums.length; i++) i];
    var totalN = 0;
    var totalX = 0;
    for (final n in nums) {
      totalN += n;
    }
    for (final e in x) {
      totalX += e;
    }
    return totalX - totalN;
  }
}