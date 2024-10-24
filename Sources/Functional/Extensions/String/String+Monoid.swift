
extension String: Monoid {
    public static let mempty: String = ""
    
    public static func <> (lhs: String, rhs: String) -> String {
        lhs + rhs
    }
}
