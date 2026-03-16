import SwiftUI
import EulerLiveUI

struct RootDemoView: View {
    @State private var selectedTheme: ThemeSelection = .default
    @State private var avatarSize: Double = 72
    @State private var borderWidth: Double = 2
    @State private var showsStatusDot = true
    @State private var usesFallbackAvatar = false
    @State private var usesRoundedShape = false

    private var currentAvatar: AvatarModel {
        usesFallbackAvatar ? DemoFixtures.fallbackAvatar : DemoFixtures.avatar
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Avatar Lab")
                    .font(.largeTitle.weight(.bold))

                Text("This app is intentionally focused on the avatar primitive only.")
                    .foregroundStyle(.secondary)

                HStack(alignment: .top, spacing: 24) {
                    AvatarView(
                        model: currentAvatar,
                        size: avatarSize,
                        shape: usesRoundedShape
                            ? .roundedRectangle(cornerRadius: 18)
                            : .circle,
                        borderWidth: borderWidth
                    ) {
                        if showsStatusDot {
                            Circle()
                                .fill(.green)
                                .frame(width: 18, height: 18)
                                .overlay(Circle().stroke(.black, lineWidth: 3))
                        }
                    }

                    VStack(alignment: .leading, spacing: 14) {
                        Toggle("Show status dot", isOn: $showsStatusDot)
                        Toggle("Use fallback avatar", isOn: $usesFallbackAvatar)
                        Toggle("Use rounded shape", isOn: $usesRoundedShape)

                        VStack(alignment: .leading, spacing: 6) {
                            Text("Avatar size  \(Int(avatarSize))")
                            Slider(value: $avatarSize, in: 40...180)
                        }

                        VStack(alignment: .leading, spacing: 6) {
                            Text("Border width  \(Int(borderWidth))")
                            Slider(value: $borderWidth, in: 0...8)
                        }

                        Picker("Theme", selection: $selectedTheme) {
                            ForEach(ThemeSelection.allCases) { theme in
                                Text(theme.title).tag(theme)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    .frame(maxWidth: 320, alignment: .leading)
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("Variants")
                        .font(.title2.weight(.semibold))

                    HStack(spacing: 18) {
                        AvatarView(model: DemoFixtures.avatar, size: 44, borderWidth: 1)

                        AvatarView(model: DemoFixtures.avatar, size: 72, borderWidth: 2)

                        AvatarView(
                            model: DemoFixtures.fallbackAvatar,
                            size: 96,
                            shape: .roundedRectangle(cornerRadius: 20),
                            borderWidth: 2
                        )
                    }
                }
            }
            .padding(24)
        }
        .applyEulerLiveTheme(selectedTheme.theme)
    }
}

enum ThemeSelection: String, CaseIterable, Identifiable {
    case `default`
    case darkNeon
    case minimalLight

    var id: String { rawValue }

    var title: String {
        switch self {
        case .default:
            return "Default"
        case .darkNeon:
            return "Dark Neon"
        case .minimalLight:
            return "Minimal Light"
        }
    }

    var theme: EulerLiveTheme {
        switch self {
        case .default:
            return .default
        case .darkNeon:
            return .darkNeon
        case .minimalLight:
            return .minimalLight
        }
    }
}
