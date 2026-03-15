import SwiftUI

public struct CountPillView: View {
    @Environment(\.eulerLiveTheme) private var theme

    public let model: CountPillModel

    public init(model: CountPillModel) {
        self.model = model
    }

    public var body: some View {
        HStack(spacing: 8) {
            if let systemImageName = model.systemImageName {
                Image(systemName: systemImageName)
                    .foregroundStyle(theme.accent)
            }

            Text(model.title)
                .foregroundStyle(theme.secondaryText)

            Text(model.countText)
                .foregroundStyle(theme.primaryText)
                .fontWeight(.semibold)
        }
        .font(.callout)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(theme.surface)
        .clipShape(Capsule())
        .overlay(
            Capsule().stroke(theme.border, lineWidth: 1)
        )
    }
}
