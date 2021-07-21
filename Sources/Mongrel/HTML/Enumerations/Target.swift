public enum Target {
    case `self`, blank, parent, top
    case frameName(String)

    var rawValue: String {
        switch self {

        case .self:
            return "_self"
        case .blank:
            return "_blank"
        case .parent:
            return "_parent"
        case .top:
            return "_top"
        case .frameName(let value):
            return value
        }
    }
}
