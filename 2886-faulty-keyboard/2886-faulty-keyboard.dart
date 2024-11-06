class Solution {
  String finalString(String s) {
    List<String> ss = [];
    for(int i=0;i<s.length;i++){
        if(s[i].toLowerCase() == 'i'){
            ss = ss.reversed.toList();
        }else
        {
            ss.add(s[i]);
        }
    }
    return ss.join('');
  }
}