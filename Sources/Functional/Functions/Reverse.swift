
public func reverse<A, B, C, D>(_ f: @escaping (A) -> (B) -> (C) -> D) -> (C) -> (B) -> (A) -> D {
    { a in { b in { c in f(c)(b)(a) } } }
}

public func reverse<A, B, C, D>(_ f: @escaping (A, B, C) -> D) -> (C, B, A) -> D {
    { f($2, $1, $0) }
}
