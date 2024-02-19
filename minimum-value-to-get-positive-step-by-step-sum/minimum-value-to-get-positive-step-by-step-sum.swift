class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var min = nums[0]
        var sum = nums[0]
        
        for i in 1 ..< nums.count {
            sum += nums[i]
            if min > sum {
                min = sum
            }
        }
        
        if min > 0 {
            return 1
        } else {
            return 1 - min
        }
    }
}