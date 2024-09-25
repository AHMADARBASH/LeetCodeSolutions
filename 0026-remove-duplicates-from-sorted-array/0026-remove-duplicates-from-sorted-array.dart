class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> expectedNums  = [];
    for(int i=0;i<nums.length;i++){
        if(!expectedNums.contains(nums[i])){
            expectedNums.add(nums[i]);
        }
    }
    nums.clear();
    nums.addAll(expectedNums);
    return nums.length;
  }
}