class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        /*
        2 -> 1
        3 -> 1
        4 -> 2
        5 -> 2
        6 -> 2
        7 -> 3
        8 -> 3
        9 -> 3
        10 -> 4
        */

        let removeDuplicate = Set(nums)
        var result = 0

        for item in removeDuplicate {
            let count = nums.filter { $0 == item }.count

            if (count == 1) {
                result = -1
                break
            } else if (count % 3 == 0) {
                result += count / 3
            } else {
                result += (count / 3) + 1
            }
        }

        return result
    }
}