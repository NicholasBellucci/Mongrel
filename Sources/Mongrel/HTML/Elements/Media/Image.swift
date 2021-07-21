import Foundation

/// The ``Image`` element is used to embed an image.
///
/// The elements are not inserted into the page but are instead linked.
///
/// For more information about the ``<img>`` tag,
/// visit https://www.w3schools.com/tags/tag_img.asp
public struct Image: Attributable, EventListener {
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
