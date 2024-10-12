import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if !(nums.contains(val)) {
            return nums.count
        }
        
        nums.sort()
        let firstIndex = nums.firstIndex(of: val)!
        let lastIndex = nums.lastIndex(of: val)!
        nums.removeSubrange(firstIndex...lastIndex)
        
        print(nums)
        
        return nums.count
    }
}

let a = Solution()
var b = [3, 2, 2, 3, 15, 18, 3]
print(a.removeElement(&b, 3))

b = [3, 2, 2, 3]
print(a.removeElement(&b, 3))

b = [0, 1, 2, 2, 3, 0, 4, 2]
print(a.removeElement(&b, 2))

b = [2]
print(a.removeElement(&b, 3))
