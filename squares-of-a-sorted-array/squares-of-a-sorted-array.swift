class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = [Int]()

        for num in nums {
            result.append(num * num)
        }

        return result.sorted()
    }
}