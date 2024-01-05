class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var sortedArray = nums.sorted() // 1, 1, 1, 2, 3, 3, 4
        var currentNum = -1
        var index = 0
        for num in sortedArray {
            if (currentNum != num) {
                currentNum = num
                index = 0
                if (result.count <= index) {
                    result.append([])
                }
                result[index].append(num)
            } else {
                index += 1
                if (result.count <= index) {
                    result.append([])
                }
                result[index].append(num)
            }
        }

        return result
    }
}