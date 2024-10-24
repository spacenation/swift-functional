
public extension StateResult {
    var many: StateResult<S, Array<A>, Failure> {
        self.some.or(.pure([]))
    }
}

public extension StateResult {
    func many<B>(separatedBy separator: StateResult<S, B, Failure>) -> StateResult<S, Array<A>, Failure> {
        self.some(separatedBy: separator).or(.pure([]))
    }
}
