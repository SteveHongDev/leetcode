class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else {
            let arr = "\(x)".split(separator: "")
            for i in 0 ..< arr.count / 2 {
                if arr[i] == arr[arr.count - 1 - i] {
                    continue
                } else {
                    return false
                }
            }

            return true

        }

        


    }
}