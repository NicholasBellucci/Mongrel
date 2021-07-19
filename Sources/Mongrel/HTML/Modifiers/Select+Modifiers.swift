//
//  Select+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Select {
    func autofocus(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    func disabled(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Select {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func multiple(_ value: Bool) -> Select {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    func name(_ name: String) -> Select {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func required(_ value: Bool) -> Select {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    func size(_ size: Int) -> Select {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }
}
