class Solution {
  List<String> fizzBuzz(int n) {
    List<String> data = [];
    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        data.add("FizzBuzz");
      } else if (i % 5 == 0) {
        data.add("Buzz");
      } else if (i % 3 == 0) {
        data.add("Fizz");
      } else {
        data.add("$i");
      }
    }
    return data;
  }
}