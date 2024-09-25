class Solution {
  int lengthOfLastWord(String s) {
    final wordList = s.split(' ');
    wordList.removeWhere(
      (element) => element == '' || element == " ",
    );
    final word = wordList[wordList.length - 1];
    return word.length;
  }
}