import Foundation

/// An element that arranges its children in a vertical line.
public struct VStack: Attributable {
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

public extension VStack {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> VStack {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> VStack {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> VStack {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> VStack {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> VStack {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> VStack {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> VStack {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> VStack {
        var copy = self

        if let country = country {
            copy.attributes["lang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["lang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: Edge.Margin..., length: Unit? = nil) -> Element {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: Edge.Padding..., length: Unit? = nil) -> Element {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> VStack {
        var copy = self

        styles
            .sorted()
            .forEach {
                switch $0 {
                case let .custom(key, value):
                    copy.styles[key] = "\(value)"
                default:
                    guard let value: String = $0.associatedValue() else { return }
                    copy.styles[$0.stringValue] = "\(value)"
                }
            }

        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> VStack {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> VStack {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> VStack {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
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
