class Solution {
  bool isPerfectSquare(int num) {
    for(int i=1;i<=num;i++){
      if(i*i == num){
        return true;
      }
    }
    return false; 
  }
}