class Solution {
  int possibleStringCount(String word) {
    int r = 0;
    for(int i=0;i<word.length-1;i++){
        if(word[i] == word[i+1]){
            r+=1;
        }
    }
    return r+1;
  }
}