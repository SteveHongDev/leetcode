class Solution {
    fun removeElement(nums: IntArray, `val`: Int): Int {
        var endPointer = nums.size - 1
        var startPointer = 0
        while (startPointer <= endPointer) {
            if (nums[startPointer] == `val`) {
                nums[startPointer] = nums[endPointer]
                endPointer--
            } else {
                startPointer++
            }
        }
        return startPointer
    }
}