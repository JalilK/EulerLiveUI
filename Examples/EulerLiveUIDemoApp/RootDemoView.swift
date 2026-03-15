import EulerLiveUI
import SwiftUI

struct RootDemoView: View {
    @State private var selectedTheme: ThemeSelection = .default

    var body: some View {
        TabView {
            ComponentGalleryView(
                avatar: DemoFixtures.avatar,
                viewerCount: 24890,
                toast: DemoFixtures.banner
            )
            .tabItem {
                Label("Components", systemImage: "square.grid.2x2.fill")
            }

            AnimationLabView()
                .tabItem {
                    Label("Animations", systemImage: "sparkles")
                }

            ThemesDemoView()
                .tabItem {
                    Label("Themes", systemImage: "paintpalette.fill")
                }
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Picker("Theme", selection: $selectedTheme) {
                    ForEach(ThemeSelection.allCases) { theme in
                        Text(theme.title).tag(theme)
                    }
                }
                .pickerStyle(.menu)
            }
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
