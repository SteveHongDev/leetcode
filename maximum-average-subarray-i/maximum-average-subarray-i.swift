class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var curr: Double = 0
        var ans: Double = 0

        for i in 0 ..< k {
            curr += Double(nums[i])
        }

        ans = curr / Double(k)

        for i in k ..< nums.count {
            curr += Double(nums[i] - nums[i - k])
            ans = max(ans, curr / Double(k))
        }

        return ans
    }
}