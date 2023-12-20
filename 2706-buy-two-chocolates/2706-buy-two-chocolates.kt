class Solution {
    fun buyChoco(prices: IntArray, money: Int): Int {
        var result = -1

        for (idx1 in 0 until prices.size - 1) {
            for (idx2 in idx1 + 1 until prices.size) {
                val tmp = money - (prices[idx1] + prices[idx2])
                if (tmp >= 0 && tmp > result) {
                    result = tmp
                }
            }
        }
        
        if (result == -1) {
            return money
        } else {
            return result
        }
    }
}