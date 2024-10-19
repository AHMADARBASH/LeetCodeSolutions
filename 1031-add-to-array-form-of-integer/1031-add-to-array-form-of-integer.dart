class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    BigInt number = BigInt.zero;
    for (int i = 0; i < num.length; i++) {
      number = number * BigInt.from(10) + BigInt.from(num[i]);
    }
    number += BigInt.from(k);
    List<int> result = [];
    if (number == BigInt.zero) {
      result.add(0);
    } else {
      while (number > BigInt.zero) {
        result.add((number % BigInt.from(10)).toInt());
        number = number ~/ BigInt.from(10);
      }
    }
    return result.reversed.toList();
  }
}