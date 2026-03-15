import SwiftUI

public struct ShakeEffect: GeometryEffect {
    public var amount: CGFloat
    public var shakesPerUnit: CGFloat
    public var animatableData: CGFloat

    public init(
        amount: CGFloat = 8,
        shakesPerUnit: CGFloat = 3,
        animatableData: CGFloat
    ) {
        self.amount = amount
        self.shakesPerUnit = shakesPerUnit
        self.animatableData = animatableData
    }

    public func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(
            CGAffineTransform(
                translationX: amount * sin(animatableData * .pi * shakesPerUnit),
                y: 0
            )
        )
    }
}
