import SwiftUI

public struct PulseEffectModifier: ViewModifier {

    @State private var isPulsing = false

    public func body(content: Content) -> some View {
        content
            .scaleEffect(isPulsing ? 1.05 : 1)
            .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: isPulsing)
            .onAppear {
                isPulsing = true
            }
    }
}
