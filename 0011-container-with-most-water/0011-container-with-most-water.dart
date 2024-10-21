class Solution {
  int maxArea(List<int> height) {
    int i = 0;
    int j = height.length;
    int area = 0;
    while (i < j) {
      int temp = 0;
      if (height[i] > height[j - 1]) {
        temp = height[j - 1] * (j - (i + 1));
      } else {
        temp = height[i] * (j - (i + 1));
      }
      if (area < temp) {
        area = temp;
      }
      if (height[i] > height[j - 1]) {
        j--;
      } else {
        i++;
      }
    }
    return area;
  }
}