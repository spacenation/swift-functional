// Monoid protocol extends Semigroup and adds 'mempty'
public protocol Monoid: Semigroup {
    static var mempty: Self { get }
}

// Extension to provide Monoid-specific functions
extension Monoid {
    // Combine a list of monoid values into a single value
    public static func mconcat(_ values: [Self]) -> Self {
        values.reduce(mempty, <>)
    }
}
