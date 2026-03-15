import EulerLiveUI
import Foundation

enum DemoFixtures {
    static let avatar = AvatarModel(
        id: "creator-1",
        displayName: "Euler Creator",
        avatarURL: URL(string: "https://picsum.photos/200")
    )

    static let banner = ToastBannerModel(
        title: "Gift combo started",
        subtitle: "Roses are stacking fast",
        systemImageName: "sparkles"
    )
}
