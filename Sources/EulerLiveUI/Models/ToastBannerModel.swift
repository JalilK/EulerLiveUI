import Foundation

public struct ToastBannerModel: Equatable, Hashable, Sendable, Identifiable {
    public let id: String
    public let title: String
    public let subtitle: String?
    public let systemImageName: String?

    public init(
        id: String = UUID().uuidString,
        title: String,
        subtitle: String? = nil,
        systemImageName: String? = nil
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.systemImageName = systemImageName
    }
}
