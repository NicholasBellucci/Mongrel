public enum MongrelJS {
    case custom(String)
    case toggleAttribute(elementId: String, attribute: ToggleAttribute)
    case updateAttribute(elementId: String, attribute: Attribute)
    case updateInnerHTML(elementId: String, value: String)
    case updateStyle(elementId: String, style: DomStyle)


    var stringValue: String? {
        switch self {
        case .custom(let value):
            return value
        case let .toggleAttribute(id, attribute):
            return "document.getElementById('\(id)').toggleAttribute('\(attribute.rawValue)')"
        case let .updateAttribute(id, attribute):
            guard let value: String = attribute.associatedValue() else { return nil }
            return "document.getElementById('\(id)').\(attribute.label)='\(value)'"
        case let .updateInnerHTML(id, value):
            return "document.getElementById('\(id)').innerHTML = '\(value)';"
        case let .updateStyle(id, style):
            switch style {
            case let .custom(name, value):
                return "document.getElementById('\(id)').style.\(name)='\(value)'"
            default:
                guard let value: String = style.associatedValue() else { return nil }
                return "document.getElementById('\(id)').style.\(style.label)='\(value)'"
            }
        }
    }
}
