
extension StateResult {
    public static func empty(error: Failure) -> Self {
        StateResult { _ in .failure(error) }
    }
    
    public func or(_ other: Self) -> Self {
        StateResult { input in
            switch self.run(input) {
            case .success(let (output, next)):
                return .success((output, next))
            case .failure(_):
                return other.run(input)
            }
        }
    }
}
