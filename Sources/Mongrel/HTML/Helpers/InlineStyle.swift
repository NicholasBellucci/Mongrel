//
//  InlineStyle.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct InlineStyle {
    private var name: String
    private var value: Any

    public init(name: String, value: Any) {
        self.name = name
        self.value = value
    }
}

extension InlineStyle: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "\(name): \(value)"
    }

    public var debugDescription: String {
        "\(name): \(value)"
    }
}

extension InlineStyle: Comparable {
    public static func < (lhs: InlineStyle, rhs: InlineStyle) -> Bool {
        lhs.name < rhs.name
    }

    public static func == (lhs: InlineStyle, rhs: InlineStyle) -> Bool {
        lhs.name == rhs.name
    }
}
