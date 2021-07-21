public enum AcceptType {
    case allAudio, allImages, allVideo

    case `extension`(String)
    case mediaType(String)

    var rawValue: String {
        switch self {
        case .allAudio:
            return "audio/*"
        case .allImages:
            return "image/*"
        case .allVideo:
            return "video/*"
        case .extension(let value):
            return value
        case .mediaType(let value):
            return value
        }
    }
}
