//
//  OrderedList+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension OrderedList {
    func reversed(if value: Bool = true) -> OrderedList {
        var copy = self

        if value {
            copy.attributes["reversed"] = ""
        }

        return copy
    }

    func start(_ number: Int) -> OrderedList {
        var copy = self
        copy.attributes["start"] = "\(number)"
        return copy
    }

    func type(_ type: OrderedListType) -> OrderedList {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }
}
