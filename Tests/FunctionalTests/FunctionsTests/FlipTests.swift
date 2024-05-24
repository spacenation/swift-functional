import XCTest
import Functional

final class FlipTests: XCTestCase {
    func testFlip() {
        func append(s1: String, s2: String) -> String {
            s1 + s2
        }
        
        XCTAssert(flip(append)("1", "2") == "21")
    }
}
