class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else {
            let str = "\(x)"
            let length = str.count
            for i in 0 ..< length / 2 {
                if str[str.index(str.startIndex, offsetBy: i)] == str[str.index(str.endIndex, offsetBy: -1 - i)] {
                    continue
                } else {
                    return false
                }
            }

            return true

        }

        


    }
}