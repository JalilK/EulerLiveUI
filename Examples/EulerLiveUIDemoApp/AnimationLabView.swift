import EulerLiveUI
import SwiftUI

struct AnimationLabView: View {
    @Environment(\.eulerLiveTheme) private var theme

    @State private var isBannerVisible = false
    @State private var pulseAvatar = false
    @State private var shakeTick: CGFloat = 0
    @State private var progress: Double = 0.2
    @State private var viewerCount = 1200

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Animation Lab")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(theme.primaryText)

                HStack(spacing: 18) {
                    AvatarView(
                        model: DemoFixtures.avatar,
                        size: 82,
                        borderWidth: 2
                    ) {
                        Circle()
                            .fill(theme.success)
                            .frame(width: 18, height: 18)
                            .overlay(Circle().stroke(theme.background, lineWidth: 3))
                    }
                    .pulseScale(pulseAvatar)

                    VStack(alignment: .leading, spacing: 10) {
                        Button(pulseAvatar ? "Stop Pulse" : "Start Pulse") {
                            pulseAvatar.toggle()
                        }

                        Button("Shake Count Pill") {
                            withAnimation(.linear(duration: 0.45)) {
                                shakeTick += 1
                            }
                        }

                        Button(isBannerVisible ? "Hide Banner" : "Show Banner") {
                            withAnimation(.spring(duration: theme.animationDuration)) {
                                isBannerVisible.toggle()
                            }
                        }

                        Button("Add 250 Viewers") {
                            withAnimation(.spring(duration: 0.25)) {
                                viewerCount += 250
                            }
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }

                CountPillView(
                    model: CountPillModel(
                        title: "Live Viewers",
                        countText: CountFormatter.format(viewerCount),
                        systemImageName: "eye.fill"
                    )
                )
                .modifier(ShakeEffect(animatableData: shakeTick))

                if isBannerVisible {
                    ToastBannerView(model: DemoFixtures.banner)
                        .transition(.move(edge: .top).combined(with: .opacity))
                }

                VStack(alignment: .leading, spacing: 10) {
                    Text("Timer Ring")
                        .foregroundStyle(theme.primaryText)
                        .font(.headline)

                    Slider(value: $progress, in: 0...1)
                    TimerRingView(progress: progress, label: "\(Int(progress * 100))%")
                        .frame(width: 96, height: 96)
                        .animation(.easeInOut(duration: theme.animationDuration), value: progress)
                }
            }
            .padding(24)
        }
        .background(theme.background.ignoresSafeArea())
    }
}
