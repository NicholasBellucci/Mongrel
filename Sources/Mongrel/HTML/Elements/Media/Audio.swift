import Foundation

/// The ``Audio`` element is used to embed sound content in
/// in a document. This content can be sources like music and/or
/// other audio streams.
///
/// The content added to this element will be displayed in browsers
/// in which it is not supported.
///
/// For more information about the ``<audio>`` tag,
/// visit https://www.w3schools.com/tags/tag_audio.asp
public struct Audio: Attributable {
    public var tag: String = "audio"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an audio element with an optional source and inner content.
    ///
    /// - Parameters:
    ///   - src: The URL of the audio file.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(src: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["src"] = src
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Audio`` element
/// and will return an ``Audio`` element for continued use/updates.
public extension Audio {
    /// Adds a condition that controls whether the element
    /// will start playing as soon as it is ready.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autoplay``
    ///   attribute should be added.
    func allowsAutoplay(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// should display audio controls.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``controls``
    ///   attribute should be added.
    func hasControls(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will start over again every time it is finished.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``loop``
    ///   attribute should be added.
    func loop(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be muted.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``muted``
    ///   attribute should be added.
    func muted(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    /// Specifies if and how the author thinks the audio should be loaded
    /// when the page loads.
    ///
    /// - Parameters:
    ///   - type: The type to use as the audio's preload type.
    func preload(_ type: PreloadType) -> Audio {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }
}

public extension Audio {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Audio {
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
    func allowsSpellcheck(_ value: Bool) -> Audio {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Audio {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Audio {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Audio {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Audio {
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
    func id(_ id: String) -> Audio {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Audio {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Audio {
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
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Audio {
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
    func styles(_ styles: CSSProperty...) -> Audio {
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
    func tabIndex(_ index: Int) -> Audio {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Audio {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Audio {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Audio: HTMLConvertible {
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
