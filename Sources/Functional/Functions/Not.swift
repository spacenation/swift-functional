
public func not<A>(_ predicate: @escaping @Sendable (A) -> Bool) -> @Sendable (A) -> Bool {
    { input in
        !predicate(input)
    }
}
