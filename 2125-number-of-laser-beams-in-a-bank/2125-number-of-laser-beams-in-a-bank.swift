class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var startRow = 0
        var startRowItem = ""
        var endRow = 1
        var endRowItem = ""
        var result = 0

        guard bank.count != 1 else { return 0 }

        while endRow != bank.count {
            startRowItem = bank[startRow]
            endRowItem = bank[endRow]

            if (!startRowItem.contains("1")) {
                startRow += 1
                endRow = startRow + 1
                continue
            } else if (!endRowItem.contains("1")) {
                endRow += 1
                continue
            } else {
                result += startRowItem.filter { $0 == "1" }.count * endRowItem.filter { $0 == "1" }.count
                startRow = endRow
                endRow += 1
            }
        }

        return result
    }
}