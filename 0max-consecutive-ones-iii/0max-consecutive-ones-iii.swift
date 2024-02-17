class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var curr = 0
        var ans = 0

        for right in 0 ..< nums.count {
            if nums[right] == 0 {
                curr += 1
            }

            while curr > k {
                if nums[left] == 0 {
                    curr -= 1
                    left += 1
                } else {
                    left += 1
                }
            }

            ans = max(ans, right - left + 1)
        }

        return ans
    }
}