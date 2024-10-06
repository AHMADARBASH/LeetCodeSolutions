class Solution {
 void moveZeroes(List<int> nums) {
    int c = 0;
    for (int i = 0; i < nums.length; i++) {
      if (c > nums.length) {
        break;
      }
      if (nums[i] == 0) {
        nums.removeAt(i);
        nums.add(0);
        i--;
      }
      c++;
    }
  }
}