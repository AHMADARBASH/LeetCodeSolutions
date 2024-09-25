class Solution {
  List<int> plusOne(List<int> digits) {
    List<int> intList = [];
    BigInt x = BigInt.parse(digits.join());
    BigInt plus = BigInt.from(1);
    x += plus;
    final string = x.toString();

    for (int i = 0; i < string.length; i++) {
      intList.add(int.parse(string[i]));
    }
    return intList;
  }
}