
public func curry<A, B, C>(_ fn: @escaping (A, B) -> C) -> (A) -> (B) -> C {
    { (a: A) -> (B) -> C in { (b: B) -> C in fn(a, b) } }
}

public func curry<A, B, C, D>(_ fn: @escaping (A, B, C) -> D) -> (A) -> (B) -> (C) -> D {
    { (a: A) -> (B) -> (C) -> D in { (b: B) -> (C) -> D in { (c: C) -> D in fn(a, b, c) } } }
}

public func curry<A, B, C, D, E>(_ fn: @escaping (A, B, C, D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
    { (a: A) -> (B) -> (C) -> (D) -> E in { (b: B) -> (C) -> (D) -> E in { (c: C) -> (D) -> E in { (d: D) -> E in fn(a, b, c, d) } } } }
}

public func curry<A, B, C, D, E, F>(_ fn: @escaping (A, B, C, D, E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
    { (a: A) -> (B) -> (C) -> (D) -> (E) -> F in { (b: B) -> (C) -> (D) -> (E) -> F in { (c: C) -> (D) -> (E) -> F in { (d: D) -> (E) -> F in { (e: E) -> F in fn(a, b, c, d, e) } } } } }
}

public func curry<A, B, C, D, E, F, G>(_ fn: @escaping (A, B, C, D, E, F) -> G) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G {
    { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G in { (b: B) -> (C) -> (D) -> (E) -> (F) -> G in { (c: C) -> (D) -> (E) -> (F) -> G in { (d: D) -> (E) -> (F) -> G in { (e: E) -> (F) -> G in { (f: F) -> G in fn(a, b, c, d, e, f) } } } } } }
}

public func curry<A, B, C, D, E, F, G, H>(_ fn: @escaping (A, B, C, D, E, F, G) -> H) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H {
    { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H in { (c: C) -> (D) -> (E) -> (F) -> (G) -> H in { (d: D) -> (E) -> (F) -> (G) -> H in { (e: E) -> (F) -> (G) -> H in { (f: F) -> (G) -> H in { (g: G) -> H in fn(a, b, c, d, e, f, g) } } } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I>(_ fn: @escaping (A, B, C, D, E, F, G, H) -> I) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I {
    { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in { (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in { (d: D) -> (E) -> (F) -> (G) -> (H) -> I in { (e: E) -> (F) -> (G) -> (H) -> I in { (f: F) -> (G) -> (H) -> I in { (g: G) -> (H) -> I in { (h: H) -> I in fn(a, b, c, d, e, f, g, h) } } } } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I, J>(_ fn: @escaping (A, B, C, D, E, F, G, H, I) -> J) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J {
    { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in { (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in { (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in { (e: E) -> (F) -> (G) -> (H) -> (I) -> J in { (f: F) -> (G) -> (H) -> (I) -> J in { (g: G) -> (H) -> (I) -> J in { (h: H) -> (I) -> J in { (i: I) -> J in fn(a, b, c, d, e, f, g, h, i) } } } } } } } } }
}
