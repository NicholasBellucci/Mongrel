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
