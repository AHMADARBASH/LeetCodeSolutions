class Solution {
  bool isBalanced(String num) {
    var odds = 0;
    var evens = 0;
    for(int i=0;i<num.length;i++){
        if(i % 2 == 0){
            evens+=int.parse(num[i]);
        }else{
            odds+=int.parse(num[i]);
        }
    } 
    return odds == evens;
  }
}