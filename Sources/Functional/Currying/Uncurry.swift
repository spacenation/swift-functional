// Uncurry for (A) -> (B) -> C
public func uncurry<A: Sendable, B: Sendable, C: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> C
) -> @Sendable (A, B) -> C {
    { (a: A, b: B) -> C in fn(a)(b) }
}

// Uncurry for (A) -> (B) -> (C) -> D
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> D
) -> @Sendable (A, B, C) -> D {
    { (a: A, b: B, c: C) -> D in fn(a)(b)(c) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> E
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> E
) -> @Sendable (A, B, C, D) -> E {
    { (a: A, b: B, c: C, d: D) -> E in fn(a)(b)(c)(d) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> F
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> F
) -> @Sendable (A, B, C, D, E) -> F {
    { (a: A, b: B, c: C, d: D, e: E) -> F in fn(a)(b)(c)(d)(e) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> G
) -> @Sendable (A, B, C, D, E, F) -> G {
    { (a: A, b: B, c: C, d: D, e: E, f: F) -> G in fn(a)(b)(c)(d)(e)(f) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H
) -> @Sendable (A, B, C, D, E, F, G) -> H {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G) -> H in fn(a)(b)(c)(d)(e)(f)(g) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable, I: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I
) -> @Sendable (A, B, C, D, E, F, G, H) -> I {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) -> I in fn(a)(b)(c)(d)(e)(f)(g)(h) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable, I: Sendable, J: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J
) -> @Sendable (A, B, C, D, E, F, G, H, I) -> J {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) -> J in fn(a)(b)(c)(d)(e)(f)(g)(h)(i) }
}

// Uncurry for (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K
public func uncurry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable, I: Sendable, J: Sendable, K: Sendable>(
    _ fn: @escaping @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> @Sendable (J) -> K
) -> @Sendable (A, B, C, D, E, F, G, H, I, J) -> K {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) -> K in fn(a)(b)(c)(d)(e)(f)(g)(h)(i)(j) }
}
