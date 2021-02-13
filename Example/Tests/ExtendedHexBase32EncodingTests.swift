import XCTest
@testable import SwiftyTextEncoding

class ExtendedHexBase32Tests: XCTestCase {

    func test_base32Encoding_extendedHexBase32Alphabet() {
        XCTAssertEqual(try encodeToBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(try encodeToBase32("f", alphabet: .extendedHexBase32), "CO======")
        XCTAssertEqual(try encodeToBase32("fo", alphabet: .extendedHexBase32), "CPNG====")
        XCTAssertEqual(try encodeToBase32("foo", alphabet: .extendedHexBase32), "CPNMU===")
        XCTAssertEqual(try encodeToBase32("foob", alphabet: .extendedHexBase32), "CPNMUOG=")
        XCTAssertEqual(try encodeToBase32("fooba", alphabet: .extendedHexBase32), "CPNMUOJ1")
        XCTAssertEqual(try encodeToBase32("foobar", alphabet: .extendedHexBase32), "CPNMUOJ1E8======")
    }
}
