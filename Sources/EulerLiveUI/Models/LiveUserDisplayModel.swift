import Foundation

public struct LiveUserDisplayModel: Identifiable, Hashable, Sendable {
    public let id: String
    public let displayName: String
    public let username: String?
    public let avatarURL: URL?
    public let badges: [String]
    public let roleLabel: String?

    public init(
        id: String,
        displayName: String,
        username: String? = nil,
        avatarURL: URL? = nil,
        badges: [String] = [],
        roleLabel: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.username = username
        self.avatarURL = avatarURL
        self.badges = badges
        self.roleLabel = roleLabel
    }
}
