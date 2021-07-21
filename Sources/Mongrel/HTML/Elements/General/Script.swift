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
    /// Adds a condition that controls whether the element
    /// will be executed asynchronously. Only for extenal scripts.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``async``
    ///   attribute should be added.
    func async(_ value: Bool) -> Script {
        var copy = self

        if value {
            copy.attributes["async"] = ""
        }

        return copy
    }

    /// Sets the mode of the request to an HTTP CORS Request.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the script's cross-origin type.
    func crossorigin(_ type: CrossOriginType) -> Script {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be executed when the page has finished loading.
    /// Only for extenal scripts.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``defer``
    ///   attribute should be added.
    func `defer`(_ value: Bool) -> Script {
        var copy = self

        if value {
            copy.attributes["`defer`"] = ""
        }

        return copy
    }

    /// Allows a browser to check the fetched script to ensure that the code
    /// is never loaded if the source has been manipulated.
    ///
    /// - Parameters:
    ///   - integrity: The hash to be used as the script's integrity.
    func integrity(_ hash: String) -> Script {
        var copy = self
        copy.attributes["integrity"] = hash
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will should not execute in browsers supporting ES2015 modules.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``defer``
    ///   attribute should be added.
    func noModule(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["nomodule"] = "\(value)"
        return copy
    }

    /// Specifies which referrer information to send when fetching a script.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the script's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Script {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the media type of the script.
    ///
    /// - Parameters:
    ///   - type: The type to use as the script's media type.
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


