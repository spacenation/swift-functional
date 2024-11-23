
extension StateResult {
    public func flatMap<B>(_ transform: @escaping @Sendable (A) -> StateResult<S, B, Failure>) -> StateResult<S, B, Failure> {
        StateResult<S, B, Failure> { input in
            self.run(input)
                .flatMap { transform($0.output).run($0.next) }
        }
    }
    
    public func flatMapError<NewFailure: Error>(_ transform: @escaping @Sendable (Failure) -> StateResult<S, A, NewFailure>) -> StateResult<S, A, NewFailure> {
       StateResult<S, A, NewFailure> { input in
           switch self.run(input) {
               case .success(let result):
                   .success(result)
               case .failure(let error):
                   transform(error).run(input)
           }
       }
    }
    
    // Static method to create a StateResult with a pure value
    public static func pure(_ value: A) -> StateResult<S, A, Failure> {
        StateResult { state in
            .success((output: value, next: state))
        }
    }
    
    // Static method to create a failing StateResult with the specified error
    public static func fail(_ error: Failure) -> StateResult<S, A, Failure> {
        return StateResult<S, A, Failure> { _ in
            .failure(error)
        }
    }
}
