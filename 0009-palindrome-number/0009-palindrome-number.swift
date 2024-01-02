class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else {
            let arr = "\(x)".split(separator: "")
            let length = arr.count
            for i in 0 ..< length / 2 {
                if arr[i] == arr[length - 1 - i] {
                    continue
                } else {
                    return false
                }
            }

            return true

        }

        


    }
}