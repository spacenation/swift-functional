
extension StateResult {
    public func map<B: Sendable>(_ transform: @escaping @Sendable (A) -> B) -> StateResult<S, B, Failure> {
        StateResult<S, B, Failure> { input in
            self.run(input).map { (transform($0.output), $0.next) }
        }
    }
    
    public func mapError<NewFailure: Error>(_ transform: @escaping @Sendable (Failure) -> NewFailure) -> StateResult<S, A, NewFailure> {
        StateResult<S, A, NewFailure> { input in
            self.run(input).mapError(transform)
        }
    }
}
