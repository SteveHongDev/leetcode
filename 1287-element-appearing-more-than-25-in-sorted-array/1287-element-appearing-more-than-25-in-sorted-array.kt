class Solution {
    fun findSpecialInteger(arr: IntArray): Int {
        var elements = arr.distinct()
        for (element in elements) {
            if (arr.filter { it == element }.count() > (arr.size / 4)) {
                return element
            }
        }
        
        return 0
    }
}