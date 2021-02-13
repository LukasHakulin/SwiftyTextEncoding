import XCTest
@testable import SwiftyTextEncoding

class WordSafeBase32DecodingTests: XCTestCase {

    func test_base32Decoding_wordSafeBase32Alphabet_withPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .wordSafeBase32), "")
        XCTAssertEqual(try decodeFromBase32("Jj======", alphabet: .wordSafeBase32), "f")
        XCTAssertEqual(try decodeFromBase32("JmhR====", alphabet: .wordSafeBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("Jmhgw===", alphabet: .wordSafeBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("JmhgwjR=", alphabet: .wordSafeBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("JmhgwjX3", alphabet: .wordSafeBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("JmhgwjX3PC======", alphabet: .wordSafeBase32), "foobar")
    }

    func test_base32Decoding_wordSafeBase32Alphabet_noPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .wordSafeBase32), "")
        XCTAssertEqual(try decodeFromBase32("Jj", alphabet: .wordSafeBase32), "f")
        XCTAssertEqual(try decodeFromBase32("JmhR", alphabet: .wordSafeBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("Jmhgw", alphabet: .wordSafeBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("JmhgwjR", alphabet: .wordSafeBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("JmhgwjX3", alphabet: .wordSafeBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("JmhgwjX3PC", alphabet: .wordSafeBase32), "foobar")
    }

    // MARK: - Valiation

    func test_isInputValid_wrongAlphabet_base32Decoding_wodrSafeBase32Alphabet() {
        XCTAssertFalse(isStringValid("0x======", alphabet: .wordSafeBase32))
        XCTAssertFalse(isStringValid("1x======", alphabet: .wordSafeBase32))
        XCTAssertFalse(isStringValid("AB======", alphabet: .wordSafeBase32))
        XCTAssertFalse(isStringValid("ab======", alphabet: .wordSafeBase32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_wordSafeBase32Alphabet() {
        XCTAssertTrue(isStringValid("xx======", alphabet: .wordSafeBase32))
        XCTAssertTrue(isStringValid("xxxx====", alphabet: .wordSafeBase32))
        XCTAssertTrue(isStringValid("xxxxx===", alphabet: .wordSafeBase32))
        XCTAssertTrue(isStringValid("xxxxxxx=", alphabet: .wordSafeBase32))

        XCTAssertFalse(isStringValid("x======", alphabet: .wordSafeBase32))
        XCTAssertFalse(isStringValid("xxx====", alphabet: .wordSafeBase32))
        XCTAssertFalse(isStringValid("xxxxxx=", alphabet: .wordSafeBase32))
    }

    // MARK: - Throwing

    func test_isThrowingError_wrongAlphabet_base32Decoding_wordSafeBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("0x======", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("1x======", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("aa======", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }

    func test_isThrowingError_wrongPadding_base32Decoding_wordSafeBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("x======", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("xxx====", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("xxxxxx=", alphabet: .wordSafeBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }
}
