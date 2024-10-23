/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    public ListNode GetIntersectionNode(ListNode headA, ListNode headB) {
        List<ListNode> nodes = [];
        while(headA!=null){
            nodes.Add(headA);
            headA = headA.next;
        }
        while(headB!=null){
            if(nodes.Contains(headB)){
                return headB;
            }else{
                nodes.Add(headB);
                headB = headB.next;
            }
        }
        return null;
    }
}