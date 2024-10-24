import XCTest
import Functional

class WriterTests: XCTestCase {
    
    // Test: Verifying the tell function logs properly
    func testTell() {
        let writer = tell("Log entry 1")

        XCTAssertEqual(writer.run.log, "Log entry 1")
    }
    
    // Test: Verifying the map function transforms the value correctly
    func testMap() {
        let writer = Writer(5, "Initial log")
        let mappedWriter = writer.map { $0 * 2 }
        
        XCTAssertEqual(mappedWriter.run.value, 10)
        XCTAssertEqual(mappedWriter.run.log, "Initial log")
    }
    
    // Test: Verifying the flatMap function combines logs and transforms the value correctly
    func testFlatMap() {
        let writer = Writer(10, "Log entry 1\n")
            .flatMap { value in Writer(value + 5, "Log entry 2\n") }
        
        XCTAssertEqual(writer.run.value, 15)
        XCTAssertEqual(writer.run.log, "Log entry 1\nLog entry 2\n")
    }
    
    // Test: Verifying log accumulation across multiple flatMap calls
    func testLogAccumulation() {
        let writer = Writer(10, "Start\n")
            .flatMap { value in Writer(value * 2, "Doubled to \(value * 2)\n") }
            .flatMap { value in Writer(value + 10, "Added 10 to get \(value + 10)\n") }
        
        XCTAssertEqual(writer.run.value, 30)  // Final value
        XCTAssertEqual(writer.run.log, "Start\nDoubled to 20\nAdded 10 to get 30\n")  // Accumulated log
    }
}
