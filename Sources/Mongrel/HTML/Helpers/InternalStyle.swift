//
//  InternalStyle.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct InternalStyle {
    private var selector: String
    private var styles: [InlineStyle]

    public init(selector: String, styles: [InlineStyle]) {
        self.selector = selector
        self.styles = styles
    }
}

extension InternalStyle: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        representation
    }

    public var debugDescription: String {
        representation
    }

    private var representation: String {
        let stylesString = styles
            .sorted()
            .map { String(describing: $0) }
            .joined(separator: "; ")

        return "\(selector) { \(stylesString); }"
    }
}
