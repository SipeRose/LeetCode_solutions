import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count == 0 { return 0 }
        
        var identElement: Int?
        for i in 0..<(nums.count - 1)  {
            if nums[i] == nums[i+1] {
                identElement = nums[i]
                break
            }
        }
        
        if let element = identElement {
            let firstIndex = nums.firstIndex(of: element)
            let lastIndex = nums.lastIndex(of: element)
            nums.removeSubrange(firstIndex!..<lastIndex!)
            return removeDuplicates(&nums)
        } else {return nums.count}

    }
}

let a = Solution()
var b = [1,1,2]
print(a.removeDuplicates(&b))

b = [0,0,1,1,1,2,2,3,3,4]
print(a.removeDuplicates(&b))

b = []
print(a.removeDuplicates(&b))
