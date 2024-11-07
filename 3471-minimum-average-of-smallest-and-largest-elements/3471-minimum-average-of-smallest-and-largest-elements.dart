class Solution {
  double minimumAverage(List<int> nums) {
    nums.sort();
    List<double> avgs = [];
    while (nums.isNotEmpty) {
      double a = (nums[0] + nums[nums.length - 1]) / 2;
      if (avgs.isEmpty) {
        avgs.add(a);
      } else {
        if (avgs[0] > a) {
          avgs[0] = a;
        }
      }
      nums.removeAt(0);
      nums.removeLast();
    }
    return avgs[0];
  }
}