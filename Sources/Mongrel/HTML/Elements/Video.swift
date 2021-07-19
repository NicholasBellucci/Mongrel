//
//  Video.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Video: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().stringValue
    }
}

extension Video: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<video>\(innerHTML)</video>"
        } else {
            return "<video \(attributesString)>\(innerHTML)</video>"
        }
    }
}

public extension Video {
    func autoplay(if value: Bool = true) -> Video {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    func controls(if value: Bool = true) -> Video {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    func height(_ height: Double) -> Video {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    func loop(if value: Bool = true) -> Video {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    func muted(if value: Bool = true) -> Video {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    func poster(_ poster: String) -> Video {
        var copy = self
        copy.attributes["poster"] = poster
        return copy
    }

    func preload(_ type: PreloadType) -> Video {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }

    func src(_ src: String) -> Video {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    func width(_ width: Double) -> Video {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}
