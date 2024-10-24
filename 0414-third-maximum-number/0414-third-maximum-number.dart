class Solution {
  int thirdMax(List<int> nums) {
    nums.sort();
    var x = nums.toSet().toList();
    print(x);
    if(x.length == 3){
        return x[0];
    }
    if (x.length < 3) {
      return x[x.length - 1];
    }
      return x[x.length - 3];
    
  }
}