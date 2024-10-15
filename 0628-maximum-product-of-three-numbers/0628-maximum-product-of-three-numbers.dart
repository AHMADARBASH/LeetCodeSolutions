class Solution {
  int maximumProduct(List<int> nums) {
    int maxPos = 1;
    int maxNeg = 1;
    nums.sort();
    maxPos =
        nums[nums.length - 1] * nums[nums.length - 2] * nums[nums.length - 3];
    maxNeg = nums[0] * nums[1] * nums[nums.length - 1];
    return max(maxNeg, maxPos);
  }
}