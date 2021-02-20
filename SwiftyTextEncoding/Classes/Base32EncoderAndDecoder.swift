//
//  Copyright © 2021. All rights reserved.
//

// MARK: - "base32"
/*
 * 5bits to one character
 * 5 Byte-s == 40 bit-s == group of 8 letters
 */

let base32Group: Int = 5
let numberOfLettersInBase32Group: Int = 8
let pad: String = "="
let validPaddingLength: [Int] = [1, 3, 4, 6]

// MARK: Encode

// Interface

public enum Base32DecodingError: Swift.Error, Equatable {
    case noBase32Alphabet
    case unsuportedFormat
    case unexpectedInternalError
}

public enum Base32Alphabet {
    case base32, extendedHexBase32, zBase32, wordSafeBase32
}

public func encodeToBase32(_ input: [UInt8], alphabet: Base32Alphabet = .base32) throws -> String? {
    switch alphabet {
    case .base32: return try encodeToBase32(input, alphabet: base32Alphabet)
    case .extendedHexBase32: return try encodeToBase32(input, alphabet: extendedHexBase32Alphabet)
    case .zBase32: return try encodeToBase32(input, alphabet: zBase32Alphabet)
    case .wordSafeBase32: return try encodeToBase32(input, alphabet: wordSafeBase32Alphabet)
    }
}

public func encodeToBase32(_ input: Data, alphabet: Base32Alphabet = .base32) throws -> String? {
    try encodeToBase32(input.bytes, alphabet: alphabet)
}

public func encodeToBase32(_ input: String, alphabet: Base32Alphabet = .base32) throws -> String? {
    try encodeToBase32(input.bytes, alphabet: alphabet)
}

// Implementation

func encodeToBase32(_ input: [UInt8], alphabet: [String]) throws -> String? {
    guard alphabet.count == 32 else { throw Base32DecodingError.noBase32Alphabet }
    var inputSequence: [UInt8] = input
    var result: [String] = []
    // encode blocks of 5 bytes
    while inputSequence.count >= base32Group {
        result.append(alphabet[Int(inputSequence[0] >> 3)])
        result.append(alphabet[Int((inputSequence[0] & 0b00000111) << 2 | inputSequence[1] >> 6)])
        result.append(alphabet[Int((inputSequence[1] & 0b00111110) >> 1)])
        result.append(alphabet[Int((inputSequence[1] & 0b00000001) << 4 | inputSequence[2] >> 4)])
        result.append(alphabet[Int((inputSequence[2] & 0b00001111) << 1 | inputSequence[3] >> 7)])
        result.append(alphabet[Int((inputSequence[3] & 0b01111100) >> 2)])
        result.append(alphabet[Int((inputSequence[3] & 0b00000011) << 3 | inputSequence[4] >> 5)])
        result.append(alphabet[Int((inputSequence[4] & 0b00011111))])
        inputSequence = Array(inputSequence.dropFirst(base32Group))
    }

    guard inputSequence.count > 0 else { return result.joined() }

    // encode last block
    switch inputSequence.count {
    case 4:
        result.append(alphabet[Int(inputSequence[0] >> 3)])
        result.append(alphabet[Int((inputSequence[0] & 0b00000111) << 2 | inputSequence[1] >> 6)])
        result.append(alphabet[Int((inputSequence[1] & 0b00111110) >> 1)])
        result.append(alphabet[Int((inputSequence[1] & 0b00000001) << 4 | inputSequence[2] >> 4)])
        result.append(alphabet[Int((inputSequence[2] & 0b00001111) << 1 | inputSequence[3] >> 7)])
        result.append(alphabet[Int((inputSequence[3] & 0b01111100) >> 2)])
        result.append(alphabet[Int((inputSequence[3] & 0b00000011) << 3 | 0x00 >> 5)])
        return result.joined() + "="
    case 3:
        result.append(alphabet[Int(inputSequence[0] >> 3)])
        result.append(alphabet[Int((inputSequence[0] & 0b00000111) << 2 | inputSequence[1] >> 6)])
        result.append(alphabet[Int((inputSequence[1] & 0b00111110) >> 1)])
        result.append(alphabet[Int((inputSequence[1] & 0b00000001) << 4 | inputSequence[2] >> 4)])
        result.append(alphabet[Int((inputSequence[2] & 0b00001111) << 1 | 0x00 >> 7)])
        return result.joined() + "==="
    case 2:
        result.append(alphabet[Int(inputSequence[0] >> 3)])
        result.append(alphabet[Int((inputSequence[0] & 0b00000111) << 2 | inputSequence[1] >> 6)])
        result.append(alphabet[Int((inputSequence[1] & 0b00111110) >> 1)])
        result.append(alphabet[Int((inputSequence[1] & 0b00000001) << 4 | 0x00 >> 4)])
        return result.joined() + "===="
    case 1:
        result.append(alphabet[Int(inputSequence[0] >> 3)])
        result.append(alphabet[Int((inputSequence[0] & 0b00000111) << 2 | 0x00 >> 6)])
        return result.joined() + "======"
    default: break
    }

    return result.joined()
}

func encodeToBase32(_ input: Data, alphabet: [String]) throws -> String? {
    try encodeToBase32(input.bytes, alphabet: alphabet)
}

func encodeToBase32(_ input: String, alphabet: [String]) throws -> String? {
    try encodeToBase32(input.bytes, alphabet: alphabet)
}

// MARK: Decode

// Interface

public func decodeFromBase32(_ input: String, alphabet: Base32Alphabet) throws -> Data {
    let inputString = convert(input: input, padding: numberOfLettersInBase32Group, paddingCharacter: pad)
    guard isStringValid(inputString, alphabet: alphabet) == true else { throw Base32DecodingError.unsuportedFormat }

    switch alphabet {
    case .base32: return try decodeFromBase32(inputString, alphabet: base32Alphabet)
    case .extendedHexBase32: return try decodeFromBase32(inputString, alphabet: extendedHexBase32Alphabet)
    case .zBase32: return try decodeFromBase32(inputString, alphabet: zBase32Alphabet)
    case .wordSafeBase32: return try decodeFromBase32(inputString, alphabet: wordSafeBase32Alphabet)
    }
}

public func decodeFromBase32(_ input: String, alphabet: Base32Alphabet) throws -> String {
    let data = try decodeFromBase32(input, alphabet: alphabet) as Data
    guard let string = data.utf8String else { throw Base32DecodingError.unexpectedInternalError }
    return string
}

public func decodeFromBase32(_ input: String, alphabet: Base32Alphabet) throws -> [UInt8] {
    try decodeFromBase32(input, alphabet: alphabet).bytes
}

// Implementation

func decodeFromBase32(_ input: String, alphabet: [String]) throws -> Data {
    guard input.isEmpty == false else { return Data() }
    guard alphabet.count == 32 else { throw Base32DecodingError.noBase32Alphabet }
    let inputString = convert(input: input, padding: numberOfLettersInBase32Group, paddingCharacter: pad)

    var base32encodedString = inputString.bytes
    guard base32encodedString.count > 0 else { throw Base32DecodingError.unexpectedInternalError }

    // calc padding length
    var leastPaddingLength = 0
    if let index = pad.bytes.first, let firstIndexOfPad = base32encodedString.firstIndex(of: index) {
        leastPaddingLength = base32encodedString.suffix(from: firstIndexOfPad).count
        guard validPaddingLength.contains(leastPaddingLength) == true
        else { throw Base32DecodingError.unsuportedFormat }
    }
    base32encodedString = Array(base32encodedString.dropLast(leastPaddingLength))

    var result: [UInt8] = []
    while base32encodedString.count >= numberOfLettersInBase32Group {
        var first8Letters: [UInt8] = []
        for _ in 0..<numberOfLettersInBase32Group {
            guard
                let byte = base32encodedString.popOrNil(),
                let letter = byte.utf8String,
                let indexOfLetter = alphabet.firstIndex(of: letter)
            else { throw Base32DecodingError.unexpectedInternalError }
            first8Letters.append(UInt8(indexOfLetter))
        }

        result.append(first8Letters[0] << 3 | first8Letters[1] >> 2)
        result.append(first8Letters[1] << 6 | first8Letters[2] << 1 | first8Letters[3] >> 4)
        result.append(first8Letters[3] << 4 | first8Letters[4] >> 1)
        result.append(first8Letters[4] << 7 | first8Letters[5] << 2 | first8Letters[6] >> 3)
        result.append(first8Letters[6] << 5 | first8Letters[7])
    }

    var restOfLetters: [UInt8] = []
    while base32encodedString.count > 0 {
        guard
            let byte = base32encodedString.popOrNil(),
            let letter = byte.utf8String,
            let indexOfLetter = alphabet.firstIndex(of: letter)
        else { throw Base32DecodingError.unexpectedInternalError }
        restOfLetters.append(UInt8(indexOfLetter))
    }

    switch restOfLetters.count {
    case 7:
        result.append(restOfLetters[0] << 3 | restOfLetters[1] >> 2)
        result.append(restOfLetters[1] << 6 | restOfLetters[2] << 1 | restOfLetters[3] >> 4)
        result.append(restOfLetters[3] << 4 | restOfLetters[4] >> 1)
        result.append(restOfLetters[4] << 7 | restOfLetters[5] << 2 | restOfLetters[6] >> 3)
    case 5:
        result.append(restOfLetters[0] << 3 | restOfLetters[1] >> 2)
        result.append(restOfLetters[1] << 6 | restOfLetters[2] << 1 | restOfLetters[3] >> 4)
        result.append(restOfLetters[3] << 4 | restOfLetters[4] >> 1)
    case 4:
        result.append(restOfLetters[0] << 3 | restOfLetters[1] >> 2)
        result.append(restOfLetters[1] << 6 | restOfLetters[2] << 1 | restOfLetters[3] >> 4)
    case 2:
        result.append(restOfLetters[0] << 3 | restOfLetters[1] >> 2)
    default: break
    }

    return result.data
}

func decodeFromBase32(_ input: String, alphabet: [String]) throws -> String {
    try decodeFromBase32(input, alphabet: alphabet)
}

func decodeFromBase32(_ input: String, alphabet: [String]) throws -> [UInt8] {
    try decodeFromBase32(input, alphabet: alphabet).bytes
}

// Auxiliary

func isStringValid(_ input: String, alphabet: Base32Alphabet) -> Bool {
    switch alphabet {
    case .base32:
        guard
            input.range(
                of: #"^(?:[A-Z2-7]{8})*(?:[A-Z2-7]{2}={6}|[A-Z2-7]{4}={4}|[A-Z2-7]{5}={3}|[A-Z2-7]{7}=)?$"#,
                options: .regularExpression
            ) != nil
        else { return false }
        return true
    case .extendedHexBase32:
        guard
            input.range(
                of: #"^(?:[A-V0-9]{8})*(?:[A-V0-9]{2}={6}|[A-V0-9]{4}={4}|[A-V0-9]{5}={3}|[A-V0-9]{7}=)?$"#,
                options: .regularExpression
            ) != nil
        else { return false }
        return true
    case .zBase32:
        guard
            input.range(
                of: #"^(?:[a-km-uw-z3-9]{8})*(?:[a-km-uw-z3-9]{2}={6}|[a-km-uw-z3-9]{4}={4}|[a-km-uw-z3-9]{5}={3}|[a-km-uw-z3-9]{7}=)?$"#,
                options: .regularExpression
            ) != nil
        else { return false }
        return true
    case .wordSafeBase32:
        guard
            input.range(
                of: #"^(?:[CFGHJMPQRVWXcfghjmpqrvwx2-9]{8})*(?:[CFGHJMPQRVWXcfghjmpqrvwx2-9]{2}={6}|[CFGHJMPQRVWXcfghjmpqrvwx2-9]{4}={4}|[CFGHJMPQRVWXcfghjmpqrvwx2-9]{5}={3}|[CFGHJMPQRVWXcfghjmpqrvwx2-9]{7}=)?$"#,
                options: .regularExpression
            ) != nil
        else { return false }
        return true
    }
}

func convert(input: String, padding: Int, paddingCharacter: String) -> String {
    var outputString = input
    let padding = input.count % padding == 0 ? 0 : padding - (input.count % padding)
    for _ in 0..<padding { outputString += paddingCharacter }

    return outputString
}
