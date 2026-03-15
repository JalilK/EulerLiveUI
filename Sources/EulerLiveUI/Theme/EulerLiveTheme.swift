import SwiftUI

public struct EulerLiveTheme {

    public var primaryColor: Color
    public var backgroundColor: Color
    public var accentColor: Color
    public var cornerRadius: CGFloat
    public var animationDuration: Double

    public init(
        primaryColor: Color,
        backgroundColor: Color,
        accentColor: Color,
        cornerRadius: CGFloat = 12,
        animationDuration: Double = 0.35
    ) {
        self.primaryColor = primaryColor
        self.backgroundColor = backgroundColor
        self.accentColor = accentColor
        self.cornerRadius = cornerRadius
        self.animationDuration = animationDuration
    }

    public static let `default` = EulerLiveTheme(
        primaryColor: .white,
        backgroundColor: .black,
        accentColor: .blue
    )

    public static let darkNeon = EulerLiveTheme(
        primaryColor: .green,
        backgroundColor: .black,
        accentColor: .pink
    )

    public static let minimalLight = EulerLiveTheme(
        primaryColor: .black,
        backgroundColor: .white,
        accentColor: .gray
    )
}
