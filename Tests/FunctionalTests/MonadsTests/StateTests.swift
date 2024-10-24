import XCTest
import Functional

class StateTests: XCTestCase {
    
    // Test: Verifying state transitions
    func testStateTransition() {
        let increment = State<Int, Int> { state in
            return (state + 1, state + 1)  // Increment the state by 1
        }
        
        let result = increment.run(0)
        XCTAssertEqual(result.0, 1)  // The result should be 1
        XCTAssertEqual(result.1, 1)  // The new state should also be 1
    }
    
    // Test: Verifying the map function transforms the value correctly but leaves state unchanged
    func testMap() {
        let stateMonad = State<Int, Int> { state in
            return (state * 2, state)  // Double the state as value, but keep the state unchanged
        }
        
        let mappedMonad = stateMonad.map { $0 + 3 }  // Add 3 to the value
        
        let result = mappedMonad.run(2)
        XCTAssertEqual(result.0, 7)  // The transformed value should be 4 (2 * 2 + 3)
        XCTAssertEqual(result.1, 2)  // The state should remain unchanged at 2
    }
    
    // Test: Verifying the flatMap function combines values and updates state correctly
    func testFlatMap() {
        let increment = State<Int, Int> { state in
            return (state + 1, state + 1)  // Increment the state
        }
        
        let double = State<Int, Int> { state in
            return (state * 2, state)  // Double the state value
        }
        
        let combinedMonad = increment.flatMap { _ in double }
        
        let result = combinedMonad.run(3)
        XCTAssertEqual(result.0, 8)  // The value should be the doubled state: 4 * 2 = 8
        XCTAssertEqual(result.1, 4)  // The state should be incremented once: 3 + 1 = 4
    }
    
    // Test: Verifying complex state transitions using flatMap and multiple operations
    func testComplexStateTransition() {
        let addFive = State<Int, Int> { state in
            return (state + 5, state + 5)
        }
        
        let multiplyByTwo = State<Int, Int> { state in
            return (state * 2, state * 2)
        }
        
        let combinedMonad = addFive.flatMap { _ in multiplyByTwo }
        
        let result = combinedMonad.run(3)
        XCTAssertEqual(result.0, 16)  // After adding 5 (8), then multiplying by 2: 16
        XCTAssertEqual(result.1, 16)  // The final state should also be 16
    }
}
