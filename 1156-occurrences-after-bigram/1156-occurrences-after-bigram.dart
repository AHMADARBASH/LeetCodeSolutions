class Solution {
  List<String> findOcurrences(String text, String first, String second) {
    var list = text.split(' ');
    List<String> res = [];
    for(int i=0;i<list.length-2;i++){
        if(list[i] == first && list[i+1] == second){
                res.add(list[i+2]);
        }
    }
    return res;
  }
}