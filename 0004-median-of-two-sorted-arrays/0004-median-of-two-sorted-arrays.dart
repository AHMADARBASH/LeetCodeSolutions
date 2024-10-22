class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    nums1.addAll(nums2);
    nums1.sort();
    if (nums1.length % 2 == 0) {
      var res = (nums1[nums1.length ~/ 2] + nums1[(nums1.length ~/ 2) - 1]) / 2;
      return res;
    } else {
      return (nums1[nums1.length ~/ 2] / 1).toDouble();
    }
  }
}