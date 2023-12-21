class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var sortedList = points.sorted { $0[0] < $1[0] }
        var result = 0
        for index in 0..<sortedList.count {
            guard (index != sortedList.count - 1) else { break }

            let tmp = sortedList[index+1][0] - sortedList[index][0]
            if (tmp > result) {
                result = tmp
            }
        }
        
        return result
    }
}