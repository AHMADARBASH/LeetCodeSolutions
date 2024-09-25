class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> data = {};
    for (final item in nums) {
      if (data.containsKey(item)) {
        data[item] = data[item]! + 1;
      } else {
        data.putIfAbsent(item, () => 1);
      }
    }
    return data.entries.firstWhere((x) => x.value == 1).key;
  }
}