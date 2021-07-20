import Foundation

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
