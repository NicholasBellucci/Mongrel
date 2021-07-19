//
//  Link.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Link: Attributable, EventListener {
    public var tag: String = "link"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init(href: String, rel: String) {
        attributes["href"] = href
        attributes["rel"] = rel
    }
}

extension Link: HTML {
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

public extension Link {
    func crossorigin(_ type: CrossOriginType) -> Link {
        var copy = self
        copy.attributes["crossorigin"] = type.rawValue
        return copy
    }

    func href(_ href: String) -> Link {
        var copy = self
        copy.attributes["href"] = href
        return copy
    }

    func hrefLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Link {
        var copy = self

        if let country = country {
            copy.attributes["hreflang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["hreflang"] = "\(code.rawValue)"
        }

        return copy
    }

    func media(_ query: String) -> Link {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> Link {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func relationship(_ relationship: Relationship.Link) -> Link {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    func type(_ type: String) -> Link {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}
