class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        for num in nums {
            if nums.firstIndex(of: num) == nums.lastIndex(of: num) { return num }
        }
        
        // nums.reduce(.zero, ^)
        
        return 1
    }
}
