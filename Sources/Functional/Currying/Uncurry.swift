
public func uncurry<A, B, C>(_ fn: @escaping (A) -> (B) -> C) -> (A, B) -> C {
    { (a: A, b: B) -> C in fn(a)(b) }
}

public func uncurry<A, B, C, D>(_ fn: @escaping (A) -> (B) -> (C) -> D) -> (A, B, C) -> D {
    { (a: A, b: B, c: C) -> D in fn(a)(b)(c) }
}

public func uncurry<A, B, C, D, E>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> E) -> (A, B, C, D) -> E {
    { (a: A, b: B, c: C, d: D) -> E in fn(a)(b)(c)(d) }
}

public func uncurry<A, B, C, D, E, F>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> F) -> (A, B, C, D, E) -> F {
    { (a: A, b: B, c: C, d: D, e: E) -> F in fn(a)(b)(c)(d)(e) }
}

public func uncurry<A, B, C, D, E, F, G>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G) -> (A, B, C, D, E, F) -> G {
    { (a: A, b: B, c: C, d: D, e: E, f: F) -> G in fn(a)(b)(c)(d)(e)(f) }
}

public func uncurry<A, B, C, D, E, F, G, H>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H) -> (A, B, C, D, E, F, G) -> H {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G) -> H in fn(a)(b)(c)(d)(e)(f)(g) }
}

public func uncurry<A, B, C, D, E, F, G, H, I>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I) -> (A, B, C, D, E, F, G, H) -> I {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) -> I in fn(a)(b)(c)(d)(e)(f)(g)(h) }
}

public func uncurry<A, B, C, D, E, F, G, H, I, J>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J) -> (A, B, C, D, E, F, G, H, I) -> J {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) -> J in fn(a)(b)(c)(d)(e)(f)(g)(h)(i) }
}

public func uncurry<A, B, C, D, E, F, G, H, I, J, K>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K) -> (A, B, C, D, E, F, G, H, I, J) -> K {
    { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) -> K in fn(a)(b)(c)(d)(e)(f)(g)(h)(i)(j) }
}
