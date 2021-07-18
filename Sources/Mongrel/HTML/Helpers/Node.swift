//
//  Node.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public struct Node: Tag {
    public var name: String
    public var isEmpty: Bool
    public var attributes: [(name: String, value: String)] = []

    var innerHTML: String = ""

    public init(name: String, isEmpty: Bool = false) {
        self.name = name
        self.isEmpty = isEmpty
    }

    public func callAsFunction() -> Node {
        return self
    }

    public func callAsFunction(@HTMLBuilder _ content: () -> HTML) -> Node {
        var copy = self
        copy.innerHTML = content().render()
        return copy
    }
}
