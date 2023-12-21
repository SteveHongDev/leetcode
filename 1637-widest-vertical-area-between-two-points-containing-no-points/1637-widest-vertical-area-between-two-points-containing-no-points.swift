class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var xList = points.map { $0[0] }.sorted()
        var result = 0
        for index in 0..<xList.count {
            guard (index != xList.count - 1) else { break }

            if (xList[index+1] - xList[index] > result) {
                result = xList[index+1] - xList[index]
            }
        }
        
        return result
    }
}