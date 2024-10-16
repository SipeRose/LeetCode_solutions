import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var head1 = head
        let head2 = head
        while head1?.next != nil && head1 != nil {
            while head1?.next?.val == head1?.val {
                head1?.next = head1?.next?.next
            }
            head1 = head1?.next
        }
        return head2
    }
}
