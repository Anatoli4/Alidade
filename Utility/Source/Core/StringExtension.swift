import Foundation

// MARK: - String

public extension String {

  var trimmed: String { return trimmingCharacters(in: .whitespacesAndNewlines) }
  var length: Int { return characters.count }

  var sentenceCapitalized: String {
    guard length > 0 else { return self }

    let letter = self[0]
    let range = startIndex..<index(startIndex, offsetBy: 1)
    let result = replacingCharacters(in: range, with: letter)
    return result
  }

  subscript (idx: Int) -> String {
    let index = self.index(startIndex, offsetBy: idx)
    return String(self[index])
  }

  subscript (safe idx: Int) -> String? {
    let index = self.index(startIndex, offsetBy: idx)
    guard !isEmpty, (startIndex...endIndex).contains(index) else {
      return nil
    }
    return String(self[index])
  }
}
