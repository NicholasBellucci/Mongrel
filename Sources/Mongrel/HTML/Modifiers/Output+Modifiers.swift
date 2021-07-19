//
//  Output+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Output {
    func `for`(_ classes: String...) -> Attributable {
        var copy = self

        copy.attributes["for"] = classes
            .sorted()
            .map { $0 }.joined(separator: " ")

        return copy
    }

    func formId(_ id: String) -> Output {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func name(_ name: String) -> Output {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}
