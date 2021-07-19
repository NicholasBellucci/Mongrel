//
//  Audio+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Audio {
    func autoplay(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    func controls(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    func loop(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    func muted(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    func preload(_ type: PreloadType) -> Audio {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }

    func src(_ src: String) -> Audio {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }
}
