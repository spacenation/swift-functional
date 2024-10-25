

public extension StateResult {
    init<DS>(_ initFunction: @escaping @Sendable (DS) -> A, @StateResultBuilder _ builder: () -> StateResult<S, DS, Failure>) {
        let stateResultFunction = StateResult<S, @Sendable (DS) -> A, Failure>.pure(initFunction)
        let intermediateResult = builder()
        self = stateResultFunction.apply(intermediateResult)
    }
}

@resultBuilder public struct StateResultBuilder {
    
    public static func buildExpression<S, A, Failure: Error>(_ expression: StateResult<S, A, Failure>) -> StateResult<S, A, Failure> {
        expression
    }
    
    public static func buildBlock<S, D1, Failure: Error>(_ d1: StateResult<S, D1, Failure>) -> (StateResult<S, (D1), Failure>) {
        StateResult {
            d1($0).flatMap { o1 in
                .success((output: (o1.output), next: o1.next))
            }
        }
    }
    
    public static func buildBlock<S, D1, D2, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>) -> StateResult<S, (D1, D2), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    .success((output: (o1.output, o2.output), next: o2.next))
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>) -> StateResult<S, (D1, D2, D3), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        .success((output: (o1.output, o2.output, o3.output), next: o3.next))
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>) -> StateResult<S, (D1, D2, D3, D4), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            .success((output: (o1.output, o2.output, o3.output, o4.output), next: o4.next))
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output), next: o5.next))
                            }
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, D6, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>, _ d6: StateResult<S, D6, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5, D6), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                d6(o5.next).flatMap { o6 in
                                    .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output, o6.output), next: o6.next))
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, D6, D7, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>, _ d6: StateResult<S, D6, Failure>, _ d7: StateResult<S, D7, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5, D6, D7), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                d6(o5.next).flatMap { o6 in
                                    d7(o6.next).flatMap { o7 in
                                        .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output, o6.output, o7.output), next: o7.next))
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, D6, D7, D8, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>, _ d6: StateResult<S, D6, Failure>, _ d7: StateResult<S, D7, Failure>, _ d8: StateResult<S, D8, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5, D6, D7, D8), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                d6(o5.next).flatMap { o6 in
                                    d7(o6.next).flatMap { o7 in
                                        d8(o7.next).flatMap { o8 in
                                            .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output, o6.output, o7.output, o8.output), next: o8.next))
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, D6, D7, D8, D9, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>, _ d6: StateResult<S, D6, Failure>, _ d7: StateResult<S, D7, Failure>, _ d8: StateResult<S, D8, Failure>, _ d9: StateResult<S, D9, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5, D6, D7, D8, D9), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                d6(o5.next).flatMap { o6 in
                                    d7(o6.next).flatMap { o7 in
                                        d8(o7.next).flatMap { o8 in
                                            d9(o8.next).flatMap { o9 in
                                                .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output, o6.output, o7.output, o8.output, o9.output), next: o9.next))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func buildBlock<S, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, Failure: Error>(_ d1: StateResult<S, D1, Failure>, _ d2: StateResult<S, D2, Failure>, _ d3: StateResult<S, D3, Failure>, _ d4: StateResult<S, D4, Failure>, _ d5: StateResult<S, D5, Failure>, _ d6: StateResult<S, D6, Failure>, _ d7: StateResult<S, D7, Failure>, _ d8: StateResult<S, D8, Failure>, _ d9: StateResult<S, D9, Failure>, _ d10: StateResult<S, D10, Failure>) -> StateResult<S, (D1, D2, D3, D4, D5, D6, D7, D8, D9, D10), Failure> {
        StateResult { input in
            d1(input).flatMap { o1 in
                d2(o1.next).flatMap { o2 in
                    d3(o2.next).flatMap { o3 in
                        d4(o3.next).flatMap { o4 in
                            d5(o4.next).flatMap { o5 in
                                d6(o5.next).flatMap { o6 in
                                    d7(o6.next).flatMap { o7 in
                                        d8(o7.next).flatMap { o8 in
                                            d9(o8.next).flatMap { o9 in
                                                d10(o9.next).flatMap { o10 in
                                                    .success((output: (o1.output, o2.output, o3.output, o4.output, o5.output, o6.output, o7.output, o8.output, o9.output, o10.output), next: o10.next))
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
