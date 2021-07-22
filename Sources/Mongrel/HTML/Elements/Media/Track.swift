import Foundation

/// The ``Track`` element specifies text tracks for ``Audio``
/// or ``Video`` elements.
///
/// This element is used to specify subtitles, caption files or other files
/// containing text, that should be visible when the media is playing.
///
/// For more information about the ``<track>`` tag,
/// visit https://www.w3schools.com/tags/tag_track.asp
public struct Track: Attributable {
    public var tag: String = "track"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a track with a source URL and kind.
    ///
    /// - Parameters:
    ///   - src: The URL of the track file.
    ///   - kind: The kind of text track.
    public init(src: String, kind: TrackKind) {
        attributes["src"] = src
        attributes["kind"] = kind.rawValue

        if let language = kind.language {
            attributes["srclang"] = language
        }
    }
}

/// These extensions are modifiers for an ``Track`` element
/// and will return an ``Track`` element for continued use/updates.
public extension Track {
    /// Specifies the title of the text track.
    ///
    /// - Parameters:
    ///   - value: The label to be used as the track's label.
    func label(_ label: String) -> Track {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    /// Adds a condition that controls whether the element
    /// is to be enabled if the user's preferences do not indicate
    /// that another track would be more appropriate.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``default``
    ///   attribute should be added.
    func isDefault(_ value: Bool) -> Track {
        var copy = self

        if value {
            copy.attributes["default"] = ""
        }

        return copy
    }

    /// Sets the language of the track text data. Required if
    /// the track kind is ``.subtitles``.
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func srcLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Track {
        var copy = self

        if let country = country {
            copy.attributes["srclang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["srclang"] = "\(code.rawValue)"
        }

        return copy
    }
}

public extension Track {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Track {
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
    func allowsSpellcheck(_ value: Bool) -> Track {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Track {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Track {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Track {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Track {
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
    func id(_ id: String) -> Track {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Track {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Track {
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
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Track {
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
    func styles(_ styles: CSSProperty...) -> Track {
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
    func tabIndex(_ index: Int) -> Track {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Track {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Track {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Track: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
