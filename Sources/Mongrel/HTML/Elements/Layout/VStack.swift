import Foundation

/// An element that arranges its children in a vertical line.
public struct VStack: Attributable, EventListener {
    public var tag: String = "div"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a horizontal stack with alignment, spacing and inner content.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in the stack.
    ///   - spacing: The distance between adjacent subviews.
    ///   - content: An ``HTMLBuilder`` that creates the content of this stack.
    public init(alignment: HorizontalAlignment = .center, spacing: Unit? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        styles["align-items"] = alignment.rawValue
        styles["justify-content"] = Justification.center.rawValue
        styles["display"] = DisplayType.flex.rawValue
        styles["flex-direction"] = FlexDirection.column.rawValue

        if let spacing = spacing, let value: CGFloat = spacing.associatedValue() {
            styles["row-gap"] = "\(value)\(spacing.label)"
        }

        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``VStack`` element
/// and will return an ``VStack`` element for continued use/updates.
public extension VStack {
    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the frame with the unit of measurement.
    ///   - height: The height of the frame with the unit of measurement.
    ///   - justification: The justification of the content in the frame.
    func frame(width: Unit? = nil, height: Unit? = nil, justification: Justification = .center) -> VStack {
        var copy = self

        if let width = width, let value: CGFloat = width.associatedValue() {
            copy.styles["width"] = "\(value)\(width.label)"
        }

        if let height = height, let value: CGFloat = height.associatedValue() {
            copy.styles["height"] = "\(value)\(height.label)"
        }

        copy.styles["justify-content"] = justification.rawValue

        return copy
    }
}

extension VStack: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag) style=\"display: flex\"><\(tag)\(attributesString)>\(innerHTML)</\(tag)></\(tag)>"
    }
}
