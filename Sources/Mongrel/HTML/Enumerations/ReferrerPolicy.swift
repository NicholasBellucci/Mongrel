public enum ReferrerPolicy: String {
    case origin

    case noReferrer = "no-referrer"
    case noReferrerWhenDowngrade = "no-referrer-when-downgrade"
    case originWhenCrossOrigin = "origin-when-cross-origin"
    case sameOrigin = "same-origin"
    case strictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"
    case unsafeURL = "unsafe-url"
}
