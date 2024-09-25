class Solution {
     Map<String,int> x = 
    {
        'I':1,
        'V':5,
        'X':10,
        'L':50,
        'C':100,
        'D':500,
        'M':1000,
    };
  int romanToInt(String s) {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'I' && i < s.length - 1) {
        if (s[i + 1] == 'V') {
          result = result + 4;
          i++;
        } else if (s[i + 1] == 'X') {
          result = result + 9;
          i++;
        } else {
          result = result + x[s[i]]!;
        }
      } else if (s[i] == 'X' && i < s.length - 1) {
        if (s[i + 1] == 'L') {
          result = result + 40;
          i++;
        } else if (s[i + 1] == 'C') {
          result = result + 90;
          i++;
        } else {
          result = result + x[s[i]]!;
        }
      } else if (s[i] == 'C' && i < s.length - 1) {
        if (s[i + 1] == 'D') {
          result = result + 400;
          i++;
        } else if (s[i + 1] == 'M') {
          result = result + 900;
          i++;
        } else {
          result = result + x[s[i]]!;
        }
      } else {
        result = result + x[s[i]]!;
      }
    }
    return result;
  }
    
  
}