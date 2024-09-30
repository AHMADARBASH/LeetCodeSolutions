class Solution {
 bool containsDuplicate(List<int> nums) {
    Map<int, dynamic> data = {};
    for (int i = 0; i < nums.length; i++) {
      if (data.containsKey(nums[i])) {
        data[nums[i]] += 1;
      }
      data.putIfAbsent(nums[i], () => 1);
    }
    return data.values.any((e) => e >= 2);
  }
}