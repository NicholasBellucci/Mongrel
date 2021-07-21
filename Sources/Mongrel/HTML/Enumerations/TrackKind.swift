public enum TrackKind {
    case captions, chapters, descriptions, metadata

    case subtitles(language: String)

    var rawValue: String {
        switch self {
        case .captions:
            return "captions"
        case .chapters:
            return "chapters"
        case .descriptions:
            return "descriptions"
        case .metadata:
            return "metadata"
        case .subtitles(_):
            return "subtitles"
        }
    }

    var language: String? {
        switch self {
        case .subtitles(let language):
            return language
        default:
            return nil
        }
    }
}
