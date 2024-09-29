class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> data = {};
    for (int i = 0; i < nums.length; i++) {
      if (data.keys.contains(nums[i])) {
        data[nums[i]] = data[nums[i]]! + 1;
      } else {
        data.putIfAbsent(nums[i], () => 1);
      }
    }
    return data.entries.firstWhere((e) => e.value > nums.length ~/ 2).key;
  }
}