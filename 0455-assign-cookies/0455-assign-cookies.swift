class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var gHead = 0
        var sHead = 0
        
        var gSort = g.sorted()
        var sSort = s.sorted()

        while gHead != g.count && sHead != s.count {
            if gSort[gHead] <= sSort[sHead] {
                gHead += 1
            }
            sHead += 1
        }

        return gHead
    }
}