import Foundation

/// An element that arranges its children in a horizontal line.
public struct HStack: Attributable {
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
    public init(alignment: VerticalAlignment = .center, justification: Justification = .center, spacing: Unit? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        styles["align-items"] = alignment.rawValue
        styles["justify-content"] = justification.rawValue
        styles["display"] = DisplayType.flex.rawValue
        styles["flex-direction"] = FlexDirection.row.rawValue

        if let spacing = spacing, let value: CGFloat = spacing.associatedValue() {
            styles["column-gap"] = "\(value)\(spacing.label)"
        }

        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``HStack`` element
/// and will return an ``HStack`` element for continued use/updates.
public extension HStack {
    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the frame with the unit of measurement.
    ///   - height: The height of the frame with the unit of measurement.
    ///   - justification: The justification of the content in the frame.
    func frame(width: Unit? = nil, height: Unit? = nil, justification: Justification = .center) -> HStack {
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

public extension HStack {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> HStack {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> HStack {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> HStack {
        guard let copy: Self = self.class(name) else { return self }
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> HStack {
        guard let copy: Self = self.contentEditable(value) else { return self }
        return copy
    }

    /// Sets an attribute value for a given key.
    ///
    /// - Parameters:
    ///   - key: The key to use as the attribute key.
    ///   - value: The value to use as the attribute value.
    func customAttribute(key: String, value: String) -> HStack {
        guard let copy: Self = self.customAttribute(key: key, value: value) else { return self }
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> HStack {
        guard let copy: Self = self.draggable(value) else { return self }
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> HStack {
        guard let copy: Self = self.hidden(value) else { return self }
        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> HStack {
        guard let copy: Self = self.id(id) else { return self }
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> HStack {
        guard let copy: Self = self.language(code, country: country) else { return self }
        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> HStack {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> HStack {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> HStack {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> HStack {
        guard let copy: Self = self.tabIndex(index) else { return self }
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> HStack {
        guard let copy: Self = self.title(title) else { return self }
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> HStack {
        guard let copy: Self = self.translated(value) else { return self }
        return copy
    }
}

extension HStack: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
