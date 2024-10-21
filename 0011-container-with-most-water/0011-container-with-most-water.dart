class Solution {
  int maxArea(List<int> height) {
    
    int l=0;
    int area = 0;
    int r = height.length - 1;

    while(l < r){
    area = max(area, min(height[l],height[r]) * (r-l).abs());
     
 
    
    if(height[l] < height[r]) l++;
    else r--;
    }
    return area;
    
  }

  
}