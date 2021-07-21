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

public extension Image {
    /// Sets the image's attribute: ``crossorigin``.
    ///
    /// - Parameters:
    ///   - type: Allows images from third-party sites to be
    ///   used with canvas.
    func crossorigin(_ type: CrossOriginType) -> Image {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Sets the image's attributes: ``width`` and ``height``.
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

    /// Sets the image's attribute: ``ismap``.
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

    /// Sets the image's attribute: ``loading``.
    ///
    /// - Parameters:
    ///   - type: The type of load either ``eager`` or ``lazy``
    func loadType(_ type: LoadType) -> Image {
        var copy = self
        copy.attributes["loading"] = type.rawValue
        return copy
    }

    /// Sets the image's attribute: ``longdesc``.
    ///
    /// - Parameters:
    ///   - url: The detailed description URL.
    func longDescriptionURL(_ url: String) -> Image {
        var copy = self
        copy.attributes["longdesc"] = url
        return copy
    }

    /// Sets the image's attribute: ``referrerpolicy``.
    ///
    /// - Parameters:
    ///   - policy: The referrer to use when fetching the resource.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Image {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the image's attribute: ``sizes``.
    ///
    /// - Parameters:
    ///   - sizes: Image sizes for different page layouts.
    func sizes(_ sizes: String) -> Image {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    /// Sets the image's attribute: ``srcset``.
    ///
    /// - Parameters:
    ///   - srcset: The image files to be used in different situations.
    func scrset(_ srcset: String...) -> Image {
        var copy = self
        copy.attributes["srcset"] = srcset.map { $0 }.joined(separator: " ")
        return copy
    }

    /// Sets the image's attribute: ``usemap``.
    ///
    /// - Parameters:
    ///   - map: The map id.
    func useMap(_ map: String) -> Image {
        var copy = self
        copy.attributes["usemap"] = map
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
