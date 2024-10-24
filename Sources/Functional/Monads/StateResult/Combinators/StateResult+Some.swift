
public extension StateResult {
    var some: StateResult<S, Array<A>, Failure> {
        flatMap { x in
            many.map { xs in [x] + xs }
        }
    }
}

public extension StateResult {
    func some<B>(separatedBy separator: StateResult<S, B, Failure>) -> StateResult<S, Array<A>, Failure> {
        flatMap { x in
            separator.discardThen(self).many.map { xs in [x] + xs }
        }
    }
}
