
public func constant<A,B>(_ a: A) -> (B) -> A {
    { _ in a }
}
