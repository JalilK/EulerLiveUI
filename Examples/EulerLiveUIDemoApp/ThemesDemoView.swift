import EulerLiveUI
import SwiftUI

struct ThemesDemoView: View {
    @Environment(\.eulerLiveTheme) private var theme

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Theme Preview")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(theme.primaryText)

                ComponentGalleryView(
                    avatar: DemoFixtures.avatar,
                    viewerCount: 24890,
                    toast: DemoFixtures.banner
                )
                .frame(maxWidth: .infinity, minHeight: 320)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
            .padding(24)
        }
        .background(theme.background.ignoresSafeArea())
    }
}
