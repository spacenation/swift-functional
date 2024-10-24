
public struct State<S, A> {
    public let run: (S) -> (A, S)
    
    public init(run: @escaping (S) -> (A, S)) {
        self.run = run
    }
}

extension State {
    public func runAsFunction(_ s: S) -> (A, S) {
        run(s)
    }
}

// MARK: Functor
extension State {
    public func map<B>(_ f: @escaping (A) -> B) -> State<S, B> {
        State<S, B> { s in
            let (a, newState) = self.run(s)
            return (f(a), newState)
        }
    }
}

// MARK: Monad
extension State {
    public func flatMap<B>(_ f: @escaping (A) -> State<S, B>) -> State<S, B> {
        State<S, B> { s in
            let (a, newState) = self.run(s)
            return f(a).run(newState)
        }
    }
}
