//
//  Copyright © 2021. All rights reserved.
//

// Auxiliary

extension UInt8 {
    // shift first 4 bits to right
    var firstNibble: UInt8 { return self >> 4 }
    // transform byte with operator AND and "00001111" -> 0x0F in hex representation
    var secondNibble: UInt8 { return self & 0x0F }
    // utf8 String representation
    var utf8String: String? { return String(bytes: [self], encoding: .utf8) }
}

extension Array where Element == UInt8 {
    var utf8String: String? { return String(bytes: self, encoding: .utf8) }

    mutating func popOrNil() -> UInt8? {
        guard let first = self.first else { return nil }
        self.removeFirst()
        return first
    }
}

extension StringProtocol {
    var data: Data { .init(utf8) }
    var bytes: [UInt8] { .init(utf8) }
}

extension Data {
    var bytes: [UInt8] { return [UInt8](self) }
    var utf8String: String? { return String(data: self, encoding: .utf8) }
}
