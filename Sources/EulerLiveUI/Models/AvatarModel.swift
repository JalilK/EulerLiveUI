import Foundation

public struct AvatarModel: Equatable, Hashable, Sendable, Identifiable {
    public let id: String
    public let displayName: String
    public let avatarURL: URL?

    public init(
        id: String,
        displayName: String,
        avatarURL: URL? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.avatarURL = avatarURL
    }

    public var fallbackInitials: String {
        let parts = displayName
            .split(whereSeparator: { $0.isWhitespace || $0 == "_" || $0 == "-" })
            .prefix(2)

        if parts.isEmpty {
            return String(displayName.prefix(2)).uppercased()
        }

        return parts.compactMap { $0.first }.map { String($0).uppercased() }.joined()
    }
}
