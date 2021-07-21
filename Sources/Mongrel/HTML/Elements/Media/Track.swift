/// The ``Track`` element specifies text tracks for ``Audio``
/// or ``Video`` elements.
///
/// This element is used to specify subtitles, caption files or other files
/// containing text, that should be visible when the media is playing.
///
/// For more information about the ``<track>`` tag,
/// visit https://www.w3schools.com/tags/tag_track.asp
public struct Track: Attributable, EventListener {
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
