import XCTest
@testable import SwiftyTextEncoding

class Base32EncodingTests: XCTestCase {

    // MARK: - Base32
    /*
     * Base32 Test Vectors defined By RFC 4648
     * BASE32("") = ""
     * BASE32("f") = "MY======"
     * BASE32("fo") = "MZXQ===="
     * BASE32("foo") = "MZXW6==="
     * BASE32("foob") = "MZXW6YQ="
     * BASE32("fooba") = "MZXW6YTB"
     * BASE32("foobar") = "MZXW6YTBOI======"
     */
    func test_base32Encoding_base32Alphabet() {
        XCTAssertEqual(try encodeToBase32("", alphabet: .base32), "")
        XCTAssertEqual(try encodeToBase32("f", alphabet: .base32), "MY======")
        XCTAssertEqual(try encodeToBase32("fo", alphabet: .base32), "MZXQ====")
        XCTAssertEqual(try encodeToBase32("foo", alphabet: .base32), "MZXW6===")
        XCTAssertEqual(try encodeToBase32("foob", alphabet: .base32), "MZXW6YQ=")
        XCTAssertEqual(try encodeToBase32("fooba", alphabet: .base32), "MZXW6YTB")
        XCTAssertEqual(try encodeToBase32("foobar", alphabet: .base32), "MZXW6YTBOI======")
    }
}
