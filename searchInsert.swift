import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
            var low = 0
            var high = nums.count - 1
            while low <= high {
                let mid = Int((low + high) / 2)
                if nums[mid] < target {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            return high + 1
    }
}


var a = [1,3,5,6]
let b = Solution()
print(b.searchInsert(a, 5))
print(b.searchInsert(a, 2))
print(b.searchInsert(a, 7))
print(b.searchInsert(a, 0))
