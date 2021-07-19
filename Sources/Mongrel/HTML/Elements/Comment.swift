//
//  Comment.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Comment {
    var value: String

    public init(_ value: String) {
        self.value = value
    }
}

extension Comment: HTMLRepresentable {
    public func render() -> String {
        String(describing: self)
    }

    public var description: String {
        "<!-- \(value) -->"
    }

    public var debugDescription: String {
        "<!-- \(value) -->"
    }
}
