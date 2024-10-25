import Foundation

public struct StateResult<S, A: Sendable, Failure: Error>: Sendable {
    
    public let run: @Sendable (S) -> Result<(output: A, next: S), Failure>

    public init(run: @escaping @Sendable (S) -> Result<(output: A, next: S), Failure>) {
        self.run = run
    }

    public func callAsFunction(_ input: S) -> Result<(output: A, next: S), Failure> {
        return run(input)
    }
}
