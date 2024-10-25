
@Sendable public func constant<A: Sendable, B: Sendable>(_ a: A) -> @Sendable (B) -> A {
    { _ in a }
}
