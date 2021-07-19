//
//  Image.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Image: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init(src: String, alt: String? = nil) {
        attributes["src"] = src

        if let alt = alt {
            attributes["alt"] = alt
        }
    }
}

extension Image: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<img \(attributesString)>"
    }
}

public extension Image {
    func crossorigin(_ type: CrossOriginType) -> Image {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    func height(_ height: Double) -> Image {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    func isMap(_ value: Bool) -> Image {
        var copy = self

        if value {
            copy.attributes["ismap"] = ""
        }

        return copy
    }

    func loadType(_ type: LoadType) -> Image {
        var copy = self
        copy.attributes["loading"] = type.rawValue
        return copy
    }

    func longDescriptionURL(_ url: String) -> Image {
        var copy = self
        copy.attributes["longdesc"] = url
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> Image {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func sizes(_ sizes: String) -> Image {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    func scrset(_ srcset: String) -> Image {
        var copy = self
        copy.attributes["srcset"] = srcset
        return copy
    }

    func useMap(_ map: String) -> Image {
        var copy = self
        copy.attributes["usemap"] = map
        return copy
    }

    func width(_ width: Double) -> Image {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}
