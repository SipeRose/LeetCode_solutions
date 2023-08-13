import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
}
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list = [Int]()
        var list11 = list1
        var list22 = list2
        var resultList: ListNode?

        while list11 != nil {
            list.append(list11!.val)
            list11 = list11!.next
        }

        while list22 != nil {
            list.append(list22!.val)
            list22 = list22!.next
        }
        
        guard !list.isEmpty else { return nil }
        
        list.sort()
        
        resultList = ListNode(list.last!, nil)
        
        if list.count > 1 {
            for i in stride(from: list.count - 2, to: -1, by: -1) {
                resultList = ListNode(list[list.index(list.startIndex, offsetBy: i)], resultList)
            }
        }
        
        return resultList
    }
}
