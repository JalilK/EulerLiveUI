import SwiftUI

public struct ToastBannerView: View {
    @Environment(\.eulerLiveTheme) private var theme

    public let model: ToastBannerModel

    public init(model: ToastBannerModel) {
        self.model = model
    }

    public var body: some View {
        HStack(spacing: 12) {
            if let systemImageName = model.systemImageName {
                Image(systemName: systemImageName)
                    .foregroundStyle(theme.accent)
                    .font(.title3)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(model.title)
                    .foregroundStyle(theme.primaryText)
                    .font(.headline)

                if let subtitle = model.subtitle {
                    Text(subtitle)
                        .foregroundStyle(theme.secondaryText)
                        .font(.subheadline)
                }
            }

            Spacer(minLength: 0)
        }
        .padding(14)
        .background(theme.surface)
        .clipShape(RoundedRectangle(cornerRadius: theme.cornerRadius, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: theme.cornerRadius, style: .continuous)
                .stroke(theme.border, lineWidth: 1)
        )
        .shadow(color: .black.opacity(theme.shadowOpacity), radius: 12, y: 4)
    }
}
