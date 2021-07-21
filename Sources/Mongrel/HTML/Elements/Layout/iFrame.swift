import Foundation

/// The ``iFrame`` element is used to embed another document in the
/// current HTML document.
///
/// For more information about the ``<iframe>`` tag,
/// visit https://www.w3schools.com/tags/tag_iframe.asp
public struct iFrame: Attributable {
    public var tag: String = "iframe"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates an iFrame element with a title and source URL.
    ///
    /// - Parameters:
    ///   - title: The title of the iFrame element.
    ///   - src: The URL of the document to embed.
    public init(title: String, src: String) {
        attributes["title"] = title
        attributes["src"] = src
    }

    /// Creates an iFrame element with a title, source URL and inner content.
    ///
    /// - Parameters:
    ///   - title: The title of the iFrame element.
    ///   - src: The URL of the document to embed.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(title: String, src: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["title"] = title
        attributes["src"] = src
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``iFrame`` element
/// and will return an ``iFrame`` element for continued use/updates.
public extension iFrame {
    /// Specifies a feature policy for the iframe.
    ///
    /// - Parameters:
    ///   - policy: The policy to be used as the iframe's policy.
    func allow(_ policy: String) -> iFrame {
        var copy = self
        copy.attributes["allow"] = policy
        return copy
    }

    /// Adds a condition that controls whether the element
    /// allows fullscreen by calling ``requestFullscreen()``.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``allowfullscreen``
    ///   attribute should be added.
    func allowFullscreen(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowfullscreen"] = "\(value)"
        return copy
    }

    /// Adds a condition that controls whether the element
    /// allows invoking the Payment Request API.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``allowpaymentrequest``
    ///   attribute should be added.
    func allowPaymentRequest(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowpaymentrequest"] = "\(value)"
        return copy
    }

    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    ///   - height: The height of the element, in pixels.
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> iFrame {
        var copy = self

        if let width = width {
            copy.attributes["width"] = "\(width)"
        }

        if let height = height {
            copy.attributes["height"] = "\(height)"
        }

        return copy
    }

    /// Specifies whether a browser should load the iframe immediately
    /// or to defer loading of the iframe until some conditions are met.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the iframe's load type.
    func loadType(_ type: LoadType) -> iFrame {
        var copy = self
        copy.attributes["loading"] = type.rawValue
        return copy
    }

    /// Sets the name for the iframe.
    ///
    /// - Parameters:
    ///   - name: The name to use as the iframe's name.
    func name(_ name: String) -> iFrame {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Specifies which referrer information to send when fetching the iframe.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the iframe's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> iFrame {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Enables an extra set of restrictions for the content in the iframe.
    ///
    /// - Parameters:
    ///   - types: The types to be used as the iframe sandbox types.
    func sandbox(_ types: SandboxType...) -> iFrame {
        var copy = self

        copy.attributes["sandbox"] = types
            .map { $0.rawValue }
            .joined(separator: " ")

        return copy
    }
}

public extension iFrame {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> iFrame {
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
    func allowsSpellcheck(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> iFrame {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> iFrame {
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
    func id(_ id: String) -> iFrame {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> iFrame {
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
    func styles(_ styles: CSSProperty...) -> iFrame {
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
    func tabIndex(_ index: Int) -> iFrame {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> iFrame {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension iFrame: HTMLConvertible {
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

