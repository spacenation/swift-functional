infix operator <> : AdditionPrecedence

public protocol Semigroup {
    static func <> (lhs: Self, rhs: Self) -> Self
}
