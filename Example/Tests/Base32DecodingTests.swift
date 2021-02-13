import XCTest
@testable import SwiftyTextEncoding

class Base32DecodingTests: XCTestCase {

    func test_base32Decoding_base32Alphabet_withPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .base32), "")
        XCTAssertEqual(try decodeFromBase32("MY======", alphabet: .base32), "f")
        XCTAssertEqual(try decodeFromBase32("MZXQ====", alphabet: .base32), "fo")
        XCTAssertEqual(try decodeFromBase32("MZXW6===", alphabet: .base32), "foo")
        XCTAssertEqual(try decodeFromBase32("MZXW6YQ=", alphabet: .base32), "foob")
        XCTAssertEqual(try decodeFromBase32("MZXW6YTB", alphabet: .base32), "fooba")
        XCTAssertEqual(try decodeFromBase32("MZXW6YTBOI======", alphabet: .base32), "foobar")
    }

    func test_base32Decoding_base32Alphabet_noPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .base32), "")
        XCTAssertEqual(try decodeFromBase32("MY", alphabet: .base32), "f")
        XCTAssertEqual(try decodeFromBase32("MZXQ", alphabet: .base32), "fo")
        XCTAssertEqual(try decodeFromBase32("MZXW6", alphabet: .base32), "foo")
        XCTAssertEqual(try decodeFromBase32("MZXW6YQ", alphabet: .base32), "foob")
        XCTAssertEqual(try decodeFromBase32("MZXW6YTB", alphabet: .base32), "fooba")
        XCTAssertEqual(try decodeFromBase32("MZXW6YTBOI", alphabet: .base32), "foobar")
    }

    // MARK: - Valiation

    func test_isInputValid_wrongAlphabet_base32Decoding_base32Alphabet() {
        XCTAssertFalse(isStringValid("0A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("1A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("8A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("9A======", alphabet: .base32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_base32Alphabet() {
        XCTAssertTrue(isStringValid("AA======", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAA====", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAAA===", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAAAAA=", alphabet: .base32))

        XCTAssertFalse(isStringValid("A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("AAA====", alphabet: .base32))
        XCTAssertFalse(isStringValid("AAAAAA=", alphabet: .base32))
    }

    // MARK: - Throwing

    func test_isThrowingError_wrongAlphabet_base32Decoding_base32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("0A======", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("1A======", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("8A======", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("9A======", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }

    func test_isThrowingError_wrongPadding_base32Decoding_base32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("A======", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("AAA====", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("AAAAAA=", alphabet: .base32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }
}
