import UIKit
import Foundation

var greeting = "Hello, playground"

func findLongestCommonPrefix(_ strs: [String]) -> String {
  if strs.isEmpty {
      return ""
  }
  var minStr = ""
  var minStrCount = 1000
  for i in 0 ..< strs.count {
    let str = strs[i]
    if minStrCount > str.count {
      minStrCount = str.count
      minStr = str
    }
  }
  if minStr.isEmpty {
    return ""
  }

  let filteredArray = strs.filter { $0 != minStr }.map { Array($0) }
    //print(filteredArray)

  if filteredArray.isEmpty {
    return minStr
  }

  var commonPrefix = ""
  var isChecked = false
  for (index, charc) in minStr.enumerated() {
    for str in filteredArray {
      if str[index] == charc {
        isChecked = true
      } else {
        isChecked = false
        break
      }
    }

    if isChecked {
        commonPrefix.append(charc)
    } else {
      return commonPrefix
    }
  }

  return commonPrefix
}

let prefixString = findLongestCommonPrefix(["flight", "flow", "flower","kandavel"])


func isAlphabetCheck(_ value: Character) -> Bool
    {
        if ((value >= "a" && value <= "z") ||
            (value >= "A" && value <= "Z"))
        {
            return true;
        }
        return false;
    }
    func reverseAlphabet(_ data: String)
    {
          let text = Array(data);
        let n: Int = text.count;
        print(" Text Before : ", data, terminator: "");
        var low: Int = 0;
        var high: Int = n - 1;
        var firstChar: String = "";
        var lastChar: String = "";
        while (low < high)
        {
            if (isAlphabetCheck(text[low]) == true &&
                isAlphabetCheck(text[high]) == true)
            {
                // Both char is Alphabet
                firstChar = firstChar + String(text[high]);
                lastChar = String(text[low]) + lastChar;
                low += 1;
                high -= 1;
            }
            else
            {
                if (isAlphabetCheck(text[low]) == false)
                {
                    firstChar = firstChar + String(text[low]);
                    low += 1;
                }
                if (isAlphabetCheck(text[high]) == false)
                {
                    lastChar = String(text[high]) + lastChar;
                    high -= 1;
                }
            }
        }
        firstChar += lastChar;
        // Display result
        print("\n Text After : ", (firstChar) ," ");
    }


reverseAlphabet("(e)x>chan?gi@n!g")
