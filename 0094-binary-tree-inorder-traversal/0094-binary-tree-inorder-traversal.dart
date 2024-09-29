/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  List<int> inorderTraversal(TreeNode? root) {
  List<int> nums = [];
  inOrder(root,nums);
  return nums;

  }
    void inOrder(TreeNode? root,List<int> nums){
        if(root !=null){
            inOrder(root.left,nums);
            nums.add(root.val);
            inOrder(root.right,nums);
        }
    }
}