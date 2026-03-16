import SwiftUI

public struct EulerLiveTheme: Equatable, Sendable {
    public let background: Color
    public let surface: Color
    public let primaryText: Color
    public let secondaryText: Color
    public let accent: Color
    public let border: Color
    public let success: Color
    public let cornerRadius: CGFloat

    public init(
        background: Color,
        surface: Color,
        primaryText: Color,
        secondaryText: Color,
        accent: Color,
        border: Color,
        success: Color,
        cornerRadius: CGFloat = 16
    ) {
        self.background = background
        self.surface = surface
        self.primaryText = primaryText
        self.secondaryText = secondaryText
        self.accent = accent
        self.border = border
        self.success = success
        self.cornerRadius = cornerRadius
    }

    public static let `default` = EulerLiveTheme(
        background: .black,
        surface: .white.opacity(0.08),
        primaryText: .white,
        secondaryText: .white.opacity(0.7),
        accent: .blue,
        border: .white.opacity(0.12),
        success: .green
    )

    public static let darkNeon = EulerLiveTheme(
        background: Color(red: 0.05, green: 0.05, blue: 0.1),
        surface: Color(red: 0.12, green: 0.12, blue: 0.2),
        primaryText: Color(red: 0.92, green: 1.0, blue: 0.96),
        secondaryText: Color(red: 0.72, green: 0.9, blue: 0.8),
        accent: Color(red: 0.08, green: 1.0, blue: 0.72),
        border: Color(red: 0.08, green: 1.0, blue: 0.72).opacity(0.4),
        success: Color(red: 0.5, green: 1.0, blue: 0.6),
        cornerRadius: 18
    )

    public static let minimalLight = EulerLiveTheme(
        background: .white,
        surface: .black.opacity(0.04),
        primaryText: .black,
        secondaryText: .black.opacity(0.6),
        accent: .black,
        border: .black.opacity(0.08),
        success: .green,
        cornerRadius: 14
    )
}
