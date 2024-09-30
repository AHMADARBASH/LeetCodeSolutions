class Solution {
  int hammingWeight(int n) {
        String x = n.toRadixString(2);
        int count = 0;
        for(int i=0;i<x.length;i++){
            if(x[i] == '1'){
                count++;
            }
        }
        return count;
  }
}