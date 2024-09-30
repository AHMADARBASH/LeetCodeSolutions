class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, dynamic> data = {};
    for (int i = 0; i < nums.length; i++) {
      if (data.containsKey(nums[i])) {
        if ((i - data[nums[i]]).abs() <= k) {
          return true;
        }
      }
      data[nums[i]] = i;
    }
    return false;
  }
}