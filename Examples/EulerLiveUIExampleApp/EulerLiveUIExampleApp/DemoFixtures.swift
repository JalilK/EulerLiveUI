import Foundation
import EulerLiveUI

enum DemoFixtures {
    static let avatar = AvatarModel(
        id: "creator-1",
        displayName: "Euler Creator",
        avatarURL: URL(string: "https://picsum.photos/200")
    )

    static let fallbackAvatar = AvatarModel(
        id: "creator-2",
        displayName: "Jalil Kennedy",
        avatarURL: nil
    )
}
