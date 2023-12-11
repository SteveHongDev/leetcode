class Solution {
    fun merge(nums1: IntArray, m: Int, nums2: IntArray, n: Int): Unit {
        val tmp = nums1.copyOf()
        var tmpM = 0
        var tmpN = 0
        
        while (tmpM+tmpN != m+n) {
            if (tmpM == m) {
                nums1[tmpM+tmpN] = nums2[tmpN]
                tmpN++
                continue
            }
            if (tmpN == n) {
                nums1[tmpM+tmpN] = tmp[tmpM]
                tmpM++
                continue
            }
            if (tmp[tmpM] >= nums2[tmpN]) {
                nums1[tmpM+tmpN] = nums2[tmpN]
                tmpN++
            } else {
                nums1[tmpM+tmpN] = tmp[tmpM]
                tmpM++
            }
        }
    }
}