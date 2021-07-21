//
//  iFrame.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct iFrame: Attributable, EventListener {
    public var tag: String = "iframe"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    public init(title: String) {
        attributes["title"] = title
    }

    public init(title: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["title"] = title
        innerHTML = content().stringValue
    }
}

extension iFrame: HTMLConvertible {
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

public extension iFrame {
    func allow(_ policy: String) -> iFrame {
        var copy = self
        copy.attributes["allow"] = policy
        return copy
    }

    func allowFullscreen(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowfullscreen"] = "\(value)"
        return copy
    }

    func allowPaymentRequest(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowpaymentrequest"] = "\(value)"
        return copy
    }

    func height(_ height: Double) -> iFrame {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    func loadType(_ type: LoadType) -> iFrame {
        var copy = self
        copy.attributes["loading"] = type.rawValue
        return copy
    }

    /// Sets the button's attribute: ``name``.
    ///
    /// - Parameters:
    ///   - name: The name of the iframe.
    func name(_ name: String) -> iFrame {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> iFrame {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func sandbox(_ types: SandboxType...) -> iFrame {
        var copy = self

        copy.attributes["sandbox"] = types
            .map { $0.rawValue }
            .joined(separator: " ")

        return copy
    }

    func src(_ src: String) -> iFrame {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    func srcdoc(@HTMLBuilder _ content: () -> HTMLConvertible) -> iFrame {
        var copy = self
        copy.attributes["srcdoc"] = String(describing: content())
        return copy
    }

    func width(_ width: Double) -> iFrame {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}

