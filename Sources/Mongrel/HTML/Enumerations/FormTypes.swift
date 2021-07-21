public enum FormEncodeType: String {
    case formData = "multipart/form-data"
    case plain = "text/plain"
    case urlEncoded = "application/x-www-form-urlencoded"
}

public enum FormMethod: String {
    case get, post
}
