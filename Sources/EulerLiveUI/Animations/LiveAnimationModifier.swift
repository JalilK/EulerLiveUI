import SwiftUI

public struct LiveAnimationModifier: ViewModifier {

    public var style: LiveAnimationStyle
    public var duration: Double

    public init(style: LiveAnimationStyle, duration: Double = 0.35) {
        self.style = style
        self.duration = duration
    }

    public func body(content: Content) -> some View {

        switch style {

        case .pop:
            content
                .scaleEffect(1)
                .animation(.spring(response: duration, dampingFraction: 0.7), value: UUID())

        case .riseFade:
            content
                .transition(.move(edge: .bottom).combined(with: .opacity))

        case .bannerSlide:
            content
                .transition(.move(edge: .top).combined(with: .opacity))

        case .pulse:
            content
                .scaleEffect(1.05)

        case .shake:
            content
                .offset(x: 2)

        case .scoreTick:
            content
                .scaleEffect(1.1)
        }
    }
}
