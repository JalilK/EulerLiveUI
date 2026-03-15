import SwiftUI

public struct TimerRingView: View {
    @Environment(\.eulerLiveTheme) private var theme

    public let progress: Double
    public let lineWidth: CGFloat
    public let label: String?

    public init(
        progress: Double,
        lineWidth: CGFloat = 8,
        label: String? = nil
    ) {
        self.progress = max(0, min(progress, 1))
        self.lineWidth = lineWidth
        self.label = label
    }

    public var body: some View {
        ZStack {
            Circle()
                .stroke(theme.surface, lineWidth: lineWidth)

            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    theme.accent,
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))

            if let label {
                Text(label)
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(theme.primaryText)
            }
        }
    }
}
