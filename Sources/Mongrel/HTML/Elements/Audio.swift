//
//  Audio.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Audio: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLRepresentable) {
        innerHTML = content().render()
    }
}

extension Audio: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<audio>\(innerHTML)</audio>"
        } else {
            return "<audio \(attributesString)>\(innerHTML)</audio>"
        }
    }
}

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
