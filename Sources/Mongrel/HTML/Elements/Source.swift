//
//  Source.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Source: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension Source: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributesString == "" {
            return "<source>"
        } else {
            return "<source \(attributesString)>"
        }
    }
}

public extension Source {
    func media(_ query: String) -> Source {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    func sizes(_ sizes: String) -> Source {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    func src(_ src: String) -> Source {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    func srcset(_ srcset: String) -> Source {
        var copy = self
        copy.attributes["srcset"] = srcset
        return copy
    }

    func type(_ type: String) -> Source {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}
