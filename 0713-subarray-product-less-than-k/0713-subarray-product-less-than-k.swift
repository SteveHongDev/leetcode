class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        if k <= 1 {
            return 0
        }
        
        var left = 0
        var result = 0
        var curr = 1
        
        for right in 0 ..< nums.count {
            curr *= nums[right]
            
            while curr >= k {
                curr /= nums[left]
                left += 1
            }
            
            result += right - left + 1
        }
        
        return result
    }
}