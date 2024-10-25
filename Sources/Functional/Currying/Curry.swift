// Curry for (A, B) -> C
public func curry<A: Sendable, B: Sendable, C: Sendable>(
    _ fn: @escaping @Sendable (A, B) -> C
) -> @Sendable (A) -> @Sendable (B) -> C {
    { (a: A) -> @Sendable (B) -> C in { (b: B) -> C in fn(a, b) } }
}

// Curry for (A, B, C) -> D
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable>(
    _ fn: @escaping @Sendable (A, B, C) -> D
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> D {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> D in { (b: B) -> @Sendable (C) -> D in { (c: C) -> D in fn(a, b, c) } } }
}

// Curry for (A, B, C, D) -> E
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D) -> E
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> E {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> E in { (b: B) -> @Sendable (C) -> @Sendable (D) -> E in { (c: C) -> @Sendable (D) -> E in { (d: D) -> E in fn(a, b, c, d) } } } }
}

// Curry for (A, B, C, D, E) -> F
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D, E) -> F
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> F {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> F in { (b: B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> F in { (c: C) -> @Sendable (D) -> @Sendable (E) -> F in { (d: D) -> @Sendable (E) -> F in { (e: E) -> F in fn(a, b, c, d, e) } } } } }
}

// Curry for (A, B, C, D, E, F) -> G
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D, E, F) -> G
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> G {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> G in { (b: B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> G in { (c: C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> G in { (d: D) -> @Sendable (E) -> @Sendable (F) -> G in { (e: E) -> @Sendable (F) -> G in { (f: F) -> G in fn(a, b, c, d, e, f) } } } } } }
}

// Curry for (A, B, C, D, E, F, G) -> H
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D, E, F, G) -> H
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H in { (b: B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H in { (c: C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H in { (d: D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> H in { (e: E) -> @Sendable (F) -> @Sendable (G) -> H in { (f: F) -> @Sendable (G) -> H in { (g: G) -> H in fn(a, b, c, d, e, f, g) } } } } } } }
}

// Curry for (A, B, C, D, E, F, G, H) -> I
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable, I: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D, E, F, G, H) -> I
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I in { (b: B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I in { (c: C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I in { (d: D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I in { (e: E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> I in { (f: F) -> @Sendable (G) -> @Sendable (H) -> I in { (g: G) -> @Sendable (H) -> I in { (h: H) -> I in fn(a, b, c, d, e, f, g, h) } } } } } } } }
}

// Curry for (A, B, C, D, E, F, G, H, I) -> J
public func curry<A: Sendable, B: Sendable, C: Sendable, D: Sendable, E: Sendable, F: Sendable, G: Sendable, H: Sendable, I: Sendable, J: Sendable>(
    _ fn: @escaping @Sendable (A, B, C, D, E, F, G, H, I) -> J
) -> @Sendable (A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J {
    { (a: A) -> @Sendable (B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (b: B) -> @Sendable (C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (c: C) -> @Sendable (D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (d: D) -> @Sendable (E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (e: E) -> @Sendable (F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (f: F) -> @Sendable (G) -> @Sendable (H) -> @Sendable (I) -> J in { (g: G) -> @Sendable (H) -> @Sendable (I) -> J in { (h: H) -> @Sendable (I) -> J in { (i: I) -> J in fn(a, b, c, d, e, f, g, h, i) } } } } } } } } }
}
