class Solution {
    fun maxProductDifference(nums: IntArray): Int {
        nums.sort()
        val size = nums.size
        return (nums[size-1] * nums[size-2]) - (nums[0] * nums[1])
    }
}