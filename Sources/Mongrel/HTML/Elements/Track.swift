//
//  Track.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Track: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init(src: String, kind: TrackKind) {
        attributes["src"] = src
        attributes["kind"] = kind.rawValue

        if let language = kind.language {
            attributes["srclang"] = language
        }
    }
}

extension Track: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<track \(attributesString)>"
    }
}
