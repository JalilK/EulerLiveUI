import SwiftUI

private struct EulerLiveThemeKey: EnvironmentKey {
    static let defaultValue = EulerLiveTheme.default
}

public extension EnvironmentValues {
    var eulerLiveTheme: EulerLiveTheme {
        get { self[EulerLiveThemeKey.self] }
        set { self[EulerLiveThemeKey.self] = newValue }
    }
}

public extension View {
    func applyEulerLiveTheme(_ theme: EulerLiveTheme) -> some View {
        environment(\.eulerLiveTheme, theme)
    }
}
