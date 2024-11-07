class Solution {
  int minimumOperations(List<int> nums) {
    int r = 0;
    for (int i = 0; i < nums.length; i++) {
      if ((nums[i] + 1) % 3 == 0 || (nums[i] - 1) % 3 == 0) {
        r++;
      }
    }
    return r;
  }
}