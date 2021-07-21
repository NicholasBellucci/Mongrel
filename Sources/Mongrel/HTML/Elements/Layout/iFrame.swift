/// The ``iFrame`` element is used to embed another document in the
/// current HTML document.
///
/// For more information about the ``<iframe>`` tag,
/// visit https://www.w3schools.com/tags/tag_iframe.asp
public struct iFrame: Attributable, EventListener {
    public var tag: String = "iframe"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates an iFrame element with a title and source URL.
    ///
    /// - Parameters:
    ///   - title: The title of the iFrame element.
    ///   - src: The URL of the document to embed.
    public init(title: String, src: String) {
        attributes["title"] = title
        attributes["src"] = src
    }

    /// Creates an iFrame element with a title and source URL.
    ///
    /// - Parameters:
    ///   - title: The title of the iFrame element.
    ///   - src: The URL of the document to embed.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(title: String, src: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["title"] = title
        attributes["src"] = src
        innerHTML = content().stringValue
    }
}

public extension iFrame {
    /// Sets the iframe's attribute: ``allow``.
    ///
    /// - Parameters:
    ///   - policy: The feature policy.
    func allow(_ policy: String) -> iFrame {
        var copy = self
        copy.attributes["allow"] = policy
        return copy
    }

    /// Sets the iframe's attribute: ``allowfullscreen``.
    ///
    /// - Parameters:
    ///   - value: Determines if fullscreen mode can be activated.
    ///   by calling ``requestFullscreen()``.
    func allowFullscreen(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowfullscreen"] = "\(value)"
        return copy
    }

    /// Sets the iframe's attribute: ``allowpaymentrequest``.
    ///
    /// - Parameters:
    ///   - value: Determines if invoking the Payment Request API is allowed.
    func allowPaymentRequest(_ value: Bool) -> iFrame {
        var copy = self
        copy.attributes["allowpaymentrequest"] = "\(value)"
        return copy
    }

    /// Sets the iframe's attribute: ``height``.
    ///
    /// - Parameters:
    ///   - height: The height of the element, in pixels.
    func height(_ height: Double) -> iFrame {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    /// Sets the iframe's attribute: ``loading``.
    ///
    /// - Parameters:
    ///   - type: The type of load either ``eager`` or ``lazy``.
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

    /// Sets the iframe's attribute: ``referrerpolicy``.
    ///
    /// - Parameters:
    ///   - policy: The referrer information to send when fetching the iframe.
    func referrerPolicy(_ policy: ReferrerPolicy) -> iFrame {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the iframe's attribute: ``sandbox``.
    ///
    /// - Parameters:
    ///   - types: The types of restictions for the iframe's content.
    func sandbox(_ types: SandboxType...) -> iFrame {
        var copy = self

        copy.attributes["sandbox"] = types
            .map { $0.rawValue }
            .joined(separator: " ")

        return copy
    }

    /// Sets the iframe's attribute: ``width``.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    func width(_ width: Double) -> iFrame {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
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

