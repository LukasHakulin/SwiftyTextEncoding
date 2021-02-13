import XCTest
@testable import SwiftyTextEncoding

class Base16EncodingTests: XCTestCase {

    // MARK: - Base16
    /*
     * Base16 Test Vectors defined By RFC 4648
     * BASE16("") = ""
     * BASE16("f") = "66"
     * BASE16("fo") = "666F"
     * BASE16("foo") = "666F6F"
     * BASE16("foob") = "666F6F62"
     * BASE16("fooba") = "666F6F6261"
     * BASE16("foobar") = "666F6F626172"
     */
    func test_base16Encoding() {
        XCTAssertEqual(encodeToBase16(""), "")
        XCTAssertEqual(encodeToBase16("f"), "66")
        XCTAssertEqual(encodeToBase16("fo"), "666F")
        XCTAssertEqual(encodeToBase16("foo"), "666F6F")
        XCTAssertEqual(encodeToBase16("foob"), "666F6F62")
        XCTAssertEqual(encodeToBase16("fooba"), "666F6F6261")
        XCTAssertEqual(encodeToBase16("foobar"), "666F6F626172")
    }
}
