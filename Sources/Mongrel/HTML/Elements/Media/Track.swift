//
//  Track.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Track: Attributable, EventListener {
    public var tag: String = "track"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init(src: String, kind: TrackKind) {
        attributes["src"] = src
        attributes["kind"] = kind.rawValue

        if let language = kind.language {
            attributes["srclang"] = language
        }
    }
}

public extension Track {
    func label(_ label: String) -> Track {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    func isDefault(_ value: Bool) -> Track {
        var copy = self

        if value {
            copy.attributes["default"] = ""
        }

        return copy
    }

    func srcLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Track {
        var copy = self

        if let country = country {
            copy.attributes["srclang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["srclang"] = "\(code.rawValue)"
        }

        return copy
    }
}

extension Track: HTMLConvertible {
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
