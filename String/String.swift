import Foundation

extension String {
	
	// Function for returning if a String has unique letters
	func hasUniqueLetters() -> Bool{
		return Set(self).count == self.characters.count
	}
	
	// Function for returning if a String is a palindrome
	func isPolindrome() -> Bool{
		return String(self.reversed()).lowercased() == self.lowercased()
	}
	
	// Function for returning if a string is made of same letters from a given string
	func isMadeAs(this from: String) ->Bool {
		return Set(from) == Set(self)
		
	}
	// Alternative contains method, for find a string inside another strings
	func fuzzzyContains(_ string: String) -> Bool{
		return self.uppercased().range(of: string.uppercased()) != nil
	}
	
	// Function for returning a Int that represents how many times a character appear on a string
	func timesCharAppear(_ char: Character) -> Int {
		var int = 0
		for i in self.characters{
			if  i == char{
				int = int + 1
			}
		}
		return int
	}
	
	// Function for remove duplicates character from a String
	func removeDuplicates(char: String) -> String{
		var set1 = Set(self)
		var newstring = String()
		for i in self.characters{
			if set1.contains(i) {
				newstring = newstring + String(i)
				set1.remove(i)
			}
		}
		return newstring
	}
	
	// Function that returns a new string without consecutive spaces
	func removeAditionalSpaces() -> String{
		var isSpace = false
		var newString = String()
		
		for i in self.characters{
			if i == " "{
				if isSpace{ continue }
				isSpace = true
			}else{
				isSpace = false
			}
			newString = newString + String(i)
		}
		
		return newString
	}
}




