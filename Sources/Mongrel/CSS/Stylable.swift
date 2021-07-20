import Foundation

public protocol Stylable { }

public extension Stylable where Self: Element {
    func padding(_ edges: Set<Edge>, _ length: Unit? = nil) -> Element {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }
}

public enum Edge: String {
    case top = "margin-top"
    case right = "margin-right"
    case bottom = "margin-bottom"
    case left = "margin-left"
}

public enum Unit: CaseAccessible {
    case centimeters(CGFloat)
    case em(CGFloat)
    case ex(CGFloat)
    case inches(CGFloat)
    case millimeters(CGFloat)
    case percent(CGFloat)
    case picas(CGFloat)
    case pixels(CGFloat)
    case points(CGFloat)

    var label: String {
        switch self {
        case .centimeters: return "cm"
        case .em: return "em"
        case .ex: return "ex"
        case .inches: return "in"
        case .millimeters: return "mm"
        case .percent: return "%"
        case .picas: return "pc"
        case .pixels: return "px"
        case .points: return "pt"
        }
    }
}
