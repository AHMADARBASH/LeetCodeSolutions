class Solution {
   String capitalizeTitle(String title) {
    List<String> words = [];
    title.split(' ').forEach((e) {
      e = e.toLowerCase();
      var newE = e.split('');
      if (newE.length > 2) {
        newE[0] = newE[0].toUpperCase();
      }
      words.add(newE.join(''));
    });
    return words.join(' ');
  }
}