import Foundation

/// The ``Image`` element is used to embed an image.
///
/// The elements are not inserted into the page but are instead linked.
///
/// For more information about the ``<img>`` tag,
/// visit https://www.w3schools.com/tags/tag_img.asp
public struct Image: Attributable {
    public var tag: String = "img"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates an image element with a source and alt.
    ///
    /// - Parameters:
    ///   - src: The URL of the image file.
    ///   - alt: The alternate text for the image.
    public init(src: String, alt: String) {
        attributes["src"] = src
        attributes["alt"] = alt
    }
}

/// These extensions are modifiers for an ``Image`` element
/// and will return an ``Image`` element for continued use/updates.
public extension Image {
    /// Allow images from third-party sites that allow cross-origin
    /// access to be used with canvas.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the image's cross-origin type.
    func crossorigin(_ type: CrossOriginType) -> Image {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    ///   - height: The height of the element, in pixels.
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Image {
        var copy = self

        if let width = width {
            copy.attributes["width"] = "\(width)"
        }

        if let height = height {
            copy.attributes["height"] = "\(height)"
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// is an image map.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``ismap``
    ///   attribute should be added.
    func isMap(_ value: Bool) -> Image {
        var copy = self

        if value {
            copy.attributes["ismap"] = ""
        }

        return copy
    }

    /// Specifies whether a browser should load the image immediately
    /// or to defer loading of the image until some conditions are met.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the image's load type.
    func loadType(_ type: LoadType) -> Image {
        var copy = self
        copy.attributes["loading"] = type.rawValue
        return copy
    }

    /// Specifies a URL to a detailed description of an image.
    ///
    /// - Parameters:
    ///   - url: The detailed description URL to be used as the image's
    ///   detailed description URL.
    func longDescriptionURL(_ url: String) -> Image {
        var copy = self
        copy.attributes["longdesc"] = url
        return copy
    }

    /// Specifies which referrer information to send when fetching the image.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the image's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Image {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Specifies image sizes for different page layouts.
    ///
    /// - Parameters:
    ///   - sizes: The sizes to be used as the image sizes.
    func sizes(_ sizes: String) -> Image {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    /// Specifies a list of image files to use in different situations.
    ///
    /// - Parameters:
    ///   - srcset: The source set to be used as the image's source set.
    func scrset(_ srcset: String...) -> Image {
        var copy = self
        copy.attributes["srcset"] = srcset.map { $0 }.joined(separator: " ")
        return copy
    }

    /// Specifies an image as a client-side image map.
    ///
    /// - Parameters:
    ///   - map: The name of the map.
    func useMap(_ name: String) -> Image {
        var copy = self
        copy.attributes["usemap"] = name
        return copy
    }
}

public extension Image {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Image {
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
    func allowsSpellcheck(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Image {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Image {
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
    func id(_ id: String) -> Image {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Image {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Image {
        var copy = self
        Margin.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Image {
        var copy = self
        Padding.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Image {
        var copy = self
        CSSProperty.set(for: &copy, styles: styles)
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Image {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Image {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Image: HTMLConvertible {
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
