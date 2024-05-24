import XCTest
import Functional

final class UncurryTests: XCTestCase {
    func testUncurry() {
        XCTAssert(uncurry(curry(*))(2,2) == 4)
    }
}
