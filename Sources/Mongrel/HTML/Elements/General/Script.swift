/// The ``Script`` element is used to embed a client-side script.
///
/// This element can contain a script or point to an external script file.
///
/// For more information about the ``<script>`` tag,
/// visit https://www.w3schools.com/tags/tag_script.asp
public struct Script: Attributable, EventListener {
    public var tag: String = "script"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a script element with a source URL.
    ///
    /// - Parameters:
    ///   - src: The URL of an external script file.
    public init(src: String) {
        attributes["src"] = src
        innerHTML = ""
    }

    /// Creates a script element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(_ content: () -> String) {
        innerHTML = content()
    }
}

/// These extensions are modifiers for an ``Script`` element
/// and will return an ``Script`` element for continued use/updates.
public extension Script {
    /// Sets the script's attribute: ``async``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``async`` should be added
    ///   based on another boolean.
    func async(if value: Bool = true) -> Script {
        var copy = self

        if value {
            copy.attributes["async"] = ""
        }

        return copy
    }

    /// Sets the script's attribute: ``crossorigin``.
    ///
    /// - Parameters:
    ///   - type: The mode of request to an HTTP CORS request.
    func crossorigin(_ type: CrossOriginType) -> Script {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Sets the script's attribute: ``defer``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``defer`` should be added
    ///   based on another boolean.
    func `defer`(if value: Bool = true) -> Script {
        var copy = self

        if value {
            copy.attributes["`defer`"] = ""
        }

        return copy
    }

    /// Sets the script's attribute: ``integrity``.
    ///
    /// - Parameters:
    ///   - integrity: The file hashing value of the external file.
    func integrity(_ integrity: String) -> Script {
        var copy = self
        copy.attributes["integrity"] = integrity
        return copy
    }

    /// Sets the script's attribute: ``nomodule``.
    ///
    /// - Parameters:
    ///   - value: Specifies that the script should not be executed in browsers
    ///   supporting ES2015 modules.
    func noModule(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["nomodule"] = "\(value)"
        return copy
    }

    /// Sets the script's attribute: ``referrerpolicy``.
    ///
    /// - Parameters:
    ///   - policy: The referrer information to send when fetching a script.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Script {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the script's attribute: ``type``.
    ///
    /// - Parameters:
    ///   - type: The media type of the linked document.
    func type(_ type: String) -> Script {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}

extension Script: HTMLConvertible {
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


