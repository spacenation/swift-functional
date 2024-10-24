
public extension StateResult {
    func count(_ n: Int) -> StateResult<S, Array<A>, Failure> {
        Array(repeating: self, count: n).sequenceA()
    }
}
