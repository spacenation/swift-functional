import Foundation

public struct StateResult<S, A, Failure: Error>: Sendable {
    
    public let run: (S) -> Result<(output: A, next: S), Failure>

    public init(run: @escaping (S) -> Result<(output: A, next: S), Failure>) {
        self.run = run
    }

    public func callAsFunction(_ input: S) -> Result<(output: A, next: S), Failure> {
        return run(input)
    }
}
