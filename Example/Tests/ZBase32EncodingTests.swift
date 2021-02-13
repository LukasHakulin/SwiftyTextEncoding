import XCTest
@testable import SwiftyTextEncoding

class ZBase32EncodingTests: XCTestCase {

    func test_base32Encoding_zBase32Alphabet() {
        XCTAssertEqual(try encodeToBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(try encodeToBase32("f", alphabet: .zBase32), "ca======")
        XCTAssertEqual(try encodeToBase32("fo", alphabet: .zBase32), "c3zo====")
        XCTAssertEqual(try encodeToBase32("foo", alphabet: .zBase32), "c3zs6===")
        XCTAssertEqual(try encodeToBase32("foob", alphabet: .zBase32), "c3zs6ao=")
        XCTAssertEqual(try encodeToBase32("fooba", alphabet: .zBase32), "c3zs6aub")
        XCTAssertEqual(try encodeToBase32("foobar", alphabet: .zBase32), "c3zs6aubqe======")
    }
}
