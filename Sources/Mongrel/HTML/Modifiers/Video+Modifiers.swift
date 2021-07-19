//
//  Video+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

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
