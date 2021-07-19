//
//  Source+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

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