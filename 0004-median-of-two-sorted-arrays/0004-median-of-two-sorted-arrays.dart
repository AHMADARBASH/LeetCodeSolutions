class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
   for(int i = 0;i<nums2.length;i++){
       nums1.add(nums2[i]);
        }
      nums1.sort();
      if(nums1.length %2 !=0){
          int x = nums1.length~/2;
          return(nums1[x]).toDouble();
    }else{
        int half = nums1.length ~/ 2;
        double x = (nums1[half-1] + nums1[half]) /2;
          return x;
    }
  }
}