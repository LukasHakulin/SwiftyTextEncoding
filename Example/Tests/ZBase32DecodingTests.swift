import XCTest
@testable import SwiftyTextEncoding

class ZBase32DecodingTests: XCTestCase {

    func test_base32Decoding_zBase32Alphabet_withPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(try decodeFromBase32("ca======", alphabet: .zBase32), "f")
        XCTAssertEqual(try decodeFromBase32("c3zo====", alphabet: .zBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("c3zs6===", alphabet: .zBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("c3zs6ao=", alphabet: .zBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("c3zs6aub", alphabet: .zBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("c3zs6aubqe======", alphabet: .zBase32), "foobar")
    }

    func test_base32Decoding_zBase32Alphabet_noPadding() {
        XCTAssertEqual(try decodeFromBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(try decodeFromBase32("ca", alphabet: .zBase32), "f")
        XCTAssertEqual(try decodeFromBase32("c3zo", alphabet: .zBase32), "fo")
        XCTAssertEqual(try decodeFromBase32("c3zs6", alphabet: .zBase32), "foo")
        XCTAssertEqual(try decodeFromBase32("c3zs6ao", alphabet: .zBase32), "foob")
        XCTAssertEqual(try decodeFromBase32("c3zs6aub", alphabet: .zBase32), "fooba")
        XCTAssertEqual(try decodeFromBase32("c3zs6aubqe", alphabet: .zBase32), "foobar")
    }

    // MARK: - Valiation

    func test_isInputValid_wrongAlphabet_base32Decoding_zBase32Alphabet() {
        XCTAssertFalse(isStringValid("la======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("va======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("2a======", alphabet: .zBase32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_zBase32Alphabet() {
        XCTAssertTrue(isStringValid("aa======", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaa====", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaaa===", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaaaaa=", alphabet: .zBase32))

        XCTAssertFalse(isStringValid("a======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("aaa====", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("aaaaaa=", alphabet: .zBase32))
    }

    // MARK: - Throwing

    func test_isThrowingError_wrongAlphabet_base32Decoding_zBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("la======", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("va======", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("2a======", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }

    func test_isThrowingError_wrongPadding_base32Decoding_zBase32Alphabet() {
        XCTAssertThrowsError(
            try decodeFromBase32String("a======", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("aaa====", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
        XCTAssertThrowsError(
            try decodeFromBase32String("aaaaaa=", alphabet: .zBase32),
            expectedError: Base32DecodingError.unsuportedFormat
        )
    }
}
