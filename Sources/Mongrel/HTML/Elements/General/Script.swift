import Foundation

/// The ``Script`` element is used to embed a client-side script.
///
/// This element can contain a script or point to an external script file.
///
/// For more information about the ``<script>`` tag,
/// visit https://www.w3schools.com/tags/tag_script.asp
public struct Script: Attributable {
    public var tag: String = "script"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a script element with a source URL.
    ///
    /// - Parameters:
    ///   - src: The URL of an external script file.
    public init(src: String) {
        attributes["src"] = src
        innerHTML = ""
    }

    /// Creates a script element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(_ content: () -> String) {
        innerHTML = content()
    }
}

/// These extensions are modifiers for an ``Script`` element
/// and will return an ``Script`` element for continued use/updates.
public extension Script {
    /// Adds a condition that controls whether the element
    /// will be executed asynchronously. Only for extenal scripts.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``async``
    ///   attribute should be added.
    func async(_ value: Bool) -> Script {
        var copy = self

        if value {
            copy.attributes["async"] = ""
        }

        return copy
    }

    /// Sets the mode of the request to an HTTP CORS Request.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the script's cross-origin type.
    func crossorigin(_ type: CrossOriginType) -> Script {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be executed when the page has finished loading.
    /// Only for extenal scripts.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``defer``
    ///   attribute should be added.
    func `defer`(_ value: Bool) -> Script {
        var copy = self

        if value {
            copy.attributes["`defer`"] = ""
        }

        return copy
    }

    /// Allows a browser to check the fetched script to ensure that the code
    /// is never loaded if the source has been manipulated.
    ///
    /// - Parameters:
    ///   - integrity: The hash to be used as the script's integrity.
    func integrity(_ hash: String) -> Script {
        var copy = self
        copy.attributes["integrity"] = hash
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will should not execute in browsers supporting ES2015 modules.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``defer``
    ///   attribute should be added.
    func noModule(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["nomodule"] = "\(value)"
        return copy
    }

    /// Specifies which referrer information to send when fetching a script.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the script's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Script {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the media type of the script.
    ///
    /// - Parameters:
    ///   - type: The type to use as the script's media type.
    func type(_ type: String) -> Script {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}

public extension Script {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Script {
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
    func allowsSpellcheck(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Script {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Script {
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
    func id(_ id: String) -> Script {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Script {
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
    func margin(_ edges: Edge.Margin..., length: Unit? = nil) -> Script {
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
    func padding(_ edges: Edge.Padding..., length: Unit? = nil) -> Script {
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
    func styles(_ styles: CSSProperty...) -> Script {
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
    func tabIndex(_ index: Int) -> Script {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Script {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Script: HTMLConvertible {
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


