import XCTest
@testable import SwiftyTextEncoding

class Base16DecodingTests: XCTestCase {

    func test_base16Decoding() {
        XCTAssertEqual(decodeFromBase16(""), "")
        XCTAssertEqual(decodeFromBase16("66"), "f")
        XCTAssertEqual(decodeFromBase16("666F"), "fo")
        XCTAssertEqual(decodeFromBase16("666F6F"), "foo")
        XCTAssertEqual(decodeFromBase16("666F6F62"), "foob")
        XCTAssertEqual(decodeFromBase16("666F6F6261"), "fooba")
        XCTAssertEqual(decodeFromBase16("666F6F626172"), "foobar")
    }

    // MARK: - Valiation

    func test_isInputValid_wrongAlphabet_base16Decoding() {
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("G"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("H"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("I"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("g"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("h"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("i"))
    }
}
