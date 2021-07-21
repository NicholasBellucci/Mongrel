public enum MongrelJS {
    case updateInnerHTML(id: String, value: String)
    case custom(String)

    var stringValue: String {
        switch self {
        case let .updateInnerHTML(id, value):
            return "document.getElementById('\(id)').innerHTML = '\(value)';"
        case .custom(let value):
            return value
        }
    }
}
