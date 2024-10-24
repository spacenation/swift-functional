
public extension Array {
    func sequenceA<S, A, Failure>() -> StateResult<S, Array<A>, Failure> where Element == StateResult<S, A, Failure> {
        reversed().reduce(.pure([]), { (ys, x) in identity(x).liftA2(f: curry(+), fb: ys) })
    }
}
