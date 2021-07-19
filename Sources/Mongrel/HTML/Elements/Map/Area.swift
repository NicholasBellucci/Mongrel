//
//  Area.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Area: Attributable, EventListener {
    public var tag: String = "area"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    public init(shape: Shape, coordinates: String) {
        attributes["shape"] = shape.rawValue
        attributes["coords"] = coordinates
    }
}

extension Area: HTML {
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

public extension Area {
    func download(_ file: String) -> Area {
        var copy = self
        copy.attributes["download"] = file
        return copy
    }

    func href(_ href: String, alt: String) -> Area {
        var copy = self
        copy.attributes["href"] = href
        copy.attributes["alt"] = alt
        return copy
    }

    func media(_ query: String) -> Area {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> Area {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func relationship(_ relationship: Relationship.Area) -> Area {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    func target(_ target: Target = .`self`) -> Area {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    func type(_ type: String) -> Area {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}
