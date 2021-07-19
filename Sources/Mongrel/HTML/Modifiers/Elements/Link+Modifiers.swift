//
//  Link+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

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

    func hrefLanguage(_ language: String) -> Link {
        var copy = self
        copy.attributes["hreflang"] = language
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
