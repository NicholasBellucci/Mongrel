//
//  Image+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Image {
    func height(_ height: Double) -> Image {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    func isMap(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["ismap"] = "\(value)"
        return copy
    }

    func onAbort(_ script: String) -> Image {
        var copy = self
        copy.attributes["onabort"] = script
        return copy
    }

    func onError(_ script: String) -> Image {
        var copy = self
        copy.attributes["onerror"] = script
        return copy
    }

    func onLoad(_ script: String) -> Image {
        var copy = self
        copy.attributes["onload"] = script
        return copy
    }

    func sizes(_ sizes: String) -> Image {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    func useMap(_ value: Bool) -> Image {
        var copy = self
        copy.attributes["usemap"] = "\(value)"
        return copy
    }

    func width(_ width: Double) -> Image {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}
