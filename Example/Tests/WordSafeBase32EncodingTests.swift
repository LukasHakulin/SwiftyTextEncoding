import XCTest
@testable import SwiftyTextEncoding

class WordSafeBase32EncodingTests: XCTestCase {

    func test_base32Encoding_wordSafeBase32Alphabet() {
        XCTAssertEqual(try encodeToBase32("", alphabet: .wordSafeBase32), "")
        XCTAssertEqual(try encodeToBase32("f", alphabet: .wordSafeBase32), "Jj======")
        XCTAssertEqual(try encodeToBase32("fo", alphabet: .wordSafeBase32), "JmhR====")
        XCTAssertEqual(try encodeToBase32("foo", alphabet: .wordSafeBase32), "Jmhgw===")
        XCTAssertEqual(try encodeToBase32("foob", alphabet: .wordSafeBase32), "JmhgwjR=")
        XCTAssertEqual(try encodeToBase32("fooba", alphabet: .wordSafeBase32), "JmhgwjX3")
        XCTAssertEqual(try encodeToBase32("foobar", alphabet: .wordSafeBase32), "JmhgwjX3PC======")
    }
}
