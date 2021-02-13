import XCTest
@testable import SwiftyTextEncoding

class ExtendedHexBase32DecodingTests: XCTestCase {

    func test_base32Decoding_extendedHexBase32Alphabet_withPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(try decodeFromBase32("CO======", alphabet: .extendedHexBase32), "f")
        XCTAssertEqual(try decodeFromBase32("CPNG====", alphabet: .extendedHexBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("CPNMU===", alphabet: .extendedHexBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("CPNMUOG=", alphabet: .extendedHexBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("CPNMUOJ1", alphabet: .extendedHexBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("CPNMUOJ1E8======", alphabet: .extendedHexBase32), "foobar")
    }

    func test_base32Decoding_extendedHexBase32Alphabet_noPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(try decodeFromBase32("CO", alphabet: .extendedHexBase32), "f")
        XCTAssertEqual(try decodeFromBase32("CPNG", alphabet: .extendedHexBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("CPNMU", alphabet: .extendedHexBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("CPNMUOG", alphabet: .extendedHexBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("CPNMUOJ1", alphabet: .extendedHexBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("CPNMUOJ1E8", alphabet: .extendedHexBase32), "foobar")
    }

    // MARK: - Valiation

    func test_isInputValid_wrongAlphabet_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertFalse(isStringValid("WA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("XA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("YA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("ZA======", alphabet: .extendedHexBase32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertTrue(isStringValid("AA======", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAA====", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAAA===", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAAAAA=", alphabet: .extendedHexBase32))

        XCTAssertFalse(isStringValid("A======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("AAA====", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("AAAAAA=", alphabet: .extendedHexBase32))
    }

    // MARK: - Throwing

    func test_isThrowingError_wrongAlphabet_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("WA======", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("XA======", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("YA======", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("ZA======", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }

    func test_isThrowingError_wrongPadding_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("A======", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("AAA====", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("AAAAAA=", alphabet: .extendedHexBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }
}
