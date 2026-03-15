import Foundation

public struct CountPillModel: Equatable, Hashable, Sendable, Identifiable {
    public let id: String
    public let title: String
    public let countText: String
    public let systemImageName: String?

    public init(
        id: String = UUID().uuidString,
        title: String,
        countText: String,
        systemImageName: String? = nil
    ) {
        self.id = id
        self.title = title
        self.countText = countText
        self.systemImageName = systemImageName
    }
}
