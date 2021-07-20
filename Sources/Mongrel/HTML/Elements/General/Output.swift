//
//  Output.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Output: Attributable {
    public var tag: String = "output"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    public init() { }

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Output {
    func `for`(_ ids: String...) -> Attributable {
        var copy = self

        copy.attributes["for"] = ids
            .sorted()
            .map { $0 }.joined(separator: " ")

        return copy
    }

    func formId(_ id: String) -> Output {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the button's attribute: `name`.
    ///
    /// - Parameters:
    ///   - name: The name of the output.
    func name(_ name: String) -> Output {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}

extension Output: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
