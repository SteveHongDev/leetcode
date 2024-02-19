class Solution {
    func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
        var avgs = [nums[0]]
        var result = [Int]()
        
        for i in 1 ..< nums.count {
            avgs.append(avgs[i-1] + nums[i])
        }
        
        for i in 0 ..< nums.count {
            if i < k || i > nums.count - k - 1 {
                result.append(-1)
            } else {
                result.append((avgs[i + k] - avgs[i - k] + nums[i - k]) / (2 * k + 1))
            }
        }
        
        return result
    }
}