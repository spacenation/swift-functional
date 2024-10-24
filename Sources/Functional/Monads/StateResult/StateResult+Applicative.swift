
extension StateResult {
    public func reverseApply<B>(_ transform: StateResult<S, (A) -> B, Failure>) -> StateResult<S, B, Failure> {
        transform.flatMap { map($0) }
    }
    
    public func apply<B, C>(_ fa: StateResult<S, B, Failure>) -> StateResult<S, C, Failure> where A == (B) -> C {
        flatMap { fa.map($0) }
    }
    
    public func liftA2<B, C>(f: @escaping (A) -> (B) -> C, fb: StateResult<S, B, Failure>) -> StateResult<S, C, Failure> {
        map(f).apply(fb)
    }
    
    public func discard<B>(_ fa: StateResult<S, B, Failure>) -> Self {
        map(constant).apply(fa)
    }
    
    public func discardThen<B>(_ fa: StateResult<S, B, Failure>) -> StateResult<S, B, Failure> {
        map(constant(identity)).apply(fa)
    }
}
