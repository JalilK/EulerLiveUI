import SwiftUI

public struct ShakeEmphasisEffect: GeometryEffect {

    public var amount: CGFloat = 8
    public var shakesPerUnit: CGFloat = 3
    public var animatableData: CGFloat

    public func effectValue(size: CGSize) -> ProjectionTransform {

        ProjectionTransform(
            CGAffineTransform(
                translationX: amount * sin(animatableData * .pi * shakesPerUnit),
                y: 0
            )
        )
    }
}
