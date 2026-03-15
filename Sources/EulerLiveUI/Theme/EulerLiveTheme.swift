import SwiftUI

public struct EulerLiveTheme: Equatable, Sendable {
    public let background: Color
    public let surface: Color
    public let primaryText: Color
    public let secondaryText: Color
    public let accent: Color
    public let border: Color
    public let success: Color
    public let warning: Color
    public let shadowOpacity: Double
    public let cornerRadius: CGFloat
    public let animationDuration: Double

    public init(
        background: Color,
        surface: Color,
        primaryText: Color,
        secondaryText: Color,
        accent: Color,
        border: Color,
        success: Color,
        warning: Color,
        shadowOpacity: Double = 0.12,
        cornerRadius: CGFloat = 16,
        animationDuration: Double = 0.28
    ) {
        self.background = background
        self.surface = surface
        self.primaryText = primaryText
        self.secondaryText = secondaryText
        self.accent = accent
        self.border = border
        self.success = success
        self.warning = warning
        self.shadowOpacity = shadowOpacity
        self.cornerRadius = cornerRadius
        self.animationDuration = animationDuration
    }

    public static let `default` = EulerLiveTheme(
        background: Color.black,
        surface: Color.white.opacity(0.08),
        primaryText: Color.white,
        secondaryText: Color.white.opacity(0.74),
        accent: Color.blue,
        border: Color.white.opacity(0.12),
        success: Color.green,
        warning: Color.orange
    )

    public static let darkNeon = EulerLiveTheme(
        background: Color(red: 0.05, green: 0.05, blue: 0.1),
        surface: Color(red: 0.12, green: 0.12, blue: 0.2),
        primaryText: Color(red: 0.92, green: 1.0, blue: 0.96),
        secondaryText: Color(red: 0.72, green: 0.9, blue: 0.8),
        accent: Color(red: 0.08, green: 1.0, blue: 0.72),
        border: Color(red: 0.08, green: 1.0, blue: 0.72).opacity(0.4),
        success: Color(red: 0.5, green: 1.0, blue: 0.6),
        warning: Color(red: 1.0, green: 0.55, blue: 0.2),
        shadowOpacity: 0.22,
        cornerRadius: 18,
        animationDuration: 0.24
    )

    public static let minimalLight = EulerLiveTheme(
        background: Color.white,
        surface: Color.black.opacity(0.04),
        primaryText: Color.black,
        secondaryText: Color.black.opacity(0.6),
        accent: Color.black,
        border: Color.black.opacity(0.08),
        success: Color.green,
        warning: Color.orange,
        shadowOpacity: 0.06,
        cornerRadius: 14,
        animationDuration: 0.25
    )
}
