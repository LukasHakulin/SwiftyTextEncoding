//
//  Copyright © 2021. All rights reserved.
//

// MARK: - "base16" or "hex"
/*
 * 4bits to one character
 * 1 Byte == 2 letter
 */

// MARK: Encode

public func encodeToBase16(_ input: [UInt8]) -> String? {
    var result: [String] = []
    for byte in input {
        result.append(base16Alphabet[Int(byte.firstNibble)])
        result.append(base16Alphabet[Int(byte.secondNibble)])
    }
    return result.joined()
}

public func encodeToBase16(_ input: Data) -> String? {
    encodeToBase16(input.bytes)
}

public func encodeToBase16(_ input: String) -> String? {
    return encodeToBase16(input.bytes)
}

// MARK: Decode

public func decodeFromBase16(_ input: String) -> String? {
    guard isBase16StringValid(input) == true else { return nil }
    var base16encodedString = input.bytes
    var result: [UInt8] = []
    while base16encodedString.count > 0 {
        guard
            let firstLetterByte = base16encodedString.popOrNil(),
            let secondLetterByte = base16encodedString.popOrNil(),
            let firstLetter = firstLetterByte.utf8String,
            let secondLetter = secondLetterByte.utf8String,
            let indexOfFirstLetter = base16Alphabet.firstIndex(of: firstLetter),
            let indexOfSecondLetter = base16Alphabet.firstIndex(of: secondLetter)
        else { return nil }
        // shift first index to first nibble position and transform byte with OR operator and second index
        result.append((UInt8(indexOfFirstLetter) << 4) | UInt8(indexOfSecondLetter))
    }

    return result.utf8String
}

public func decodeFromBase16(_ input: String) -> Data? {
    return decodeFromBase16(input)?.data
}

public func decodeFromBase16(_ input: String) -> [UInt8]? {
    return decodeFromBase16(input)?.bytes
}

// Auxiliary

func isBase16StringValid(_ input: String) -> Bool {
    guard input.range(of: #"^[A-F0-9]*$"#, options: .regularExpression) != nil else { return false }
    return true
}
