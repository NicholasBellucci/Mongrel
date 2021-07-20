/// The ``Dialog`` element defines a dialog box or subwindow.
///
/// This element helps to create popup dialogs and modals.
public struct Dialog: Attributable, EventListener {
    public var tag: String = "dialog"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Dialog {
    /// Sets the dialog's attribute: `open`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``open`` should be added
    ///   based on another boolean.
    func open(if value: Bool = true) -> Dialog {
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
