
public func not<A>(_ predicate: @escaping (A) -> Bool) -> (A) -> Bool {
    { input in
        !predicate(input)
    }
}
