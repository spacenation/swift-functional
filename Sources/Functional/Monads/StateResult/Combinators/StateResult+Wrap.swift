
public func wrap<S, A, Failure: Error>(_ p: @escaping () -> StateResult<S, A, Failure>) -> StateResult<S, A, Failure> {
    StateResult<S, A, Failure> { input in
        p()(input)
    }
}
