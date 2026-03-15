import SwiftUI

public struct ComponentGalleryView: View {
    @Environment(\.eulerLiveTheme) private var theme

    public let avatar: AvatarModel
    public let viewerCount: Int
    public let toast: ToastBannerModel

    public init(
        avatar: AvatarModel,
        viewerCount: Int,
        toast: ToastBannerModel
    ) {
        self.avatar = avatar
        self.viewerCount = viewerCount
        self.toast = toast
    }

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Core Primitives")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(theme.primaryText)

                HStack(spacing: 16) {
                    AvatarView(model: avatar, size: 64, borderWidth: 2)
                    ViewerCountView(count: viewerCount)
                }

                ToastBannerView(model: toast)

                HStack(spacing: 20) {
                    TimerRingView(progress: 0.32, label: "32%")
                        .frame(width: 72, height: 72)

                    TimerRingView(progress: 0.81, label: "81%")
                        .frame(width: 72, height: 72)
                }
            }
            .padding(24)
        }
        .background(theme.background.ignoresSafeArea())
    }
}
