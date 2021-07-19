//
//  Image+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

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
            copy.attributes["ismap"] = nil
        }

        return copy
    }

    func loadType(_ type: ImageLoadType) -> Image {
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
