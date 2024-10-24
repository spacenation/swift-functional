
public struct Writer<Log: Semigroup, Value> {
    public let run: (value: Value, log: Log)
    
    public init(_ value: Value, _ log: Log) {
        self.run = (value, log)
    }
}

public func tell<Log: Semigroup>(_ log: Log) -> Writer<Log, Void> {
    Writer((), log)
}

// MARK: Functor
extension Writer {
    public func map<B>(_ f: (Value) -> B) -> Writer<Log, B> {
        Writer<Log, B>(f(run.value), run.log)
    }
}

// MARK: Monad
extension Writer {
    public func flatMap<B>(_ f: (Value) -> Writer<Log, B>) -> Writer<Log, B> {
        let newWriter = f(run.value)
        return Writer<Log, B>(newWriter.run.value, run.log <> newWriter.run.log)
    }
}
