
extension Array: Monoid {
    public static var mempty: Array { [] }
    
    public static func <> (lhs: Array, rhs: Array) -> Array {
        return lhs + rhs
    }
}
