class Solution {
double findMaxAverage(List<int> nums, int k) {
    if (nums.length == 1) {
      return nums[0].toDouble();
    }
    if (nums.isEmpty) {
      return 0;
    }
    int i = 0;
    int j = k - 1;
    List<double> avgs = [];
      double temp = 0;
    while (j <= nums.length - 1) {
      if (i == 0) {
        for (int x = i; x <= j; x++) {
          temp += nums[x];
        }
      } else {
        temp -= nums[i-1];
        temp += nums[j];
      }
      avgs.add(temp / k);

      i++;
      j++;
    }
    avgs.sort();
    return avgs[avgs.length - 1];
  }
}