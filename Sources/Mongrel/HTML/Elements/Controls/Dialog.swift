/// The ``Dialog`` element defines a dialog box or subwindow.
///
/// This element helps to create popup dialogs and modals.
///
/// For more information about the ``<dialog>`` tag,
/// visit https://www.w3schools.com/tags/tag_dialog.asp
public struct Dialog: Attributable, EventListener {
    public var tag: String = "dialog"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Dialog`` element
/// and will return an ``Dialog`` element for continued use/updates.
public extension Dialog {
    /// Sets the dialog's attribute: ``open``.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``open``
    ///   attribute should be added.
    func opened(_ value: Bool) -> Dialog {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}

extension Dialog: HTMLConvertible {
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
