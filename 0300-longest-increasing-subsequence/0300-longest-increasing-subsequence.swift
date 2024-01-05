class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 1, count: nums.count)

        print(dp)

        for i in 1 ..< nums.count {
            for j in 0 ..< i {
                if nums[j] < nums[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }

        print(dp)

        return dp.sorted().last ?? 1
    }
}