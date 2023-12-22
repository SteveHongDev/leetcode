class Solution {
    func maxScore(_ s: String) -> Int {
        var left = Substring()
        var right = Substring()
        var result = 0
        
        if (s.count == 2) {
            result = (s.first == "0" ? 1 : 0 ) + (s.last == "1" ? 1 : 0)
        } else {
            for i in 1 ..< s.count {
            left = s.prefix(i)
            right = s.suffix(s.count - i)
            
            let tmp = left.filter { $0 == "0" }.count + right.filter { $0 == "1" }.count
            if tmp > result {
                result = tmp
            }
        }
        }
        
        return result
    }
}