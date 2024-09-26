class Solution {
   String addBinary(String a, String b) {
    var num3 = BigInt.parse(a,radix: 2) + BigInt.parse(b,radix: 2);
    return num3.toRadixString(2);
  }
}