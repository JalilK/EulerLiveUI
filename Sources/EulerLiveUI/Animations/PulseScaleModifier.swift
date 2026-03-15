import SwiftUI

public struct PulseScaleModifier: ViewModifier {
    public let isActive: Bool
    public let minScale: CGFloat
    public let maxScale: CGFloat

    public init(
        isActive: Bool,
        minScale: CGFloat = 1.0,
        maxScale: CGFloat = 1.06
    ) {
        self.isActive = isActive
        self.minScale = minScale
        self.maxScale = maxScale
    }

    public func body(content: Content) -> some View {
        content
            .scaleEffect(isActive ? maxScale : minScale)
            .animation(
                isActive
                    ? .easeInOut(duration: 0.7).repeatForever(autoreverses: true)
                    : .easeOut(duration: 0.2),
                value: isActive
            )
    }
}

public extension View {
    func pulseScale(_ isActive: Bool) -> some View {
        modifier(PulseScaleModifier(isActive: isActive))
    }
}
