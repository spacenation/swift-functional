
public extension StateResult {
    func chainLeft(_ op: StateResult<S, (A, A) -> A, Failure>) -> Self {
        func rest(_ x: A) -> Self {
            op.flatMap { f in
                self.flatMap { y in
                    rest(f(x, y))
                }
            }.or(.pure(x))
        }

        return flatMap(rest)
    }
    
    func chainRight(_ op: StateResult<S, (A, A) -> A, Failure>) -> Self {
        func rest(_ x: A) -> Self {
            op.flatMap { f in
                self.chainRight(op).map { y in
                    f(x, y)
                }
            }.or(.pure(x))
        }

        return self.flatMap(rest)
    }
}
