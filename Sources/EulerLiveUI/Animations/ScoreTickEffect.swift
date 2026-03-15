import SwiftUI

public struct ScoreTickEffect: ViewModifier {

    @State private var scale: CGFloat = 1

    public func body(content: Content) -> some View {

        content
            .scaleEffect(scale)
            .onAppear {

                withAnimation(.spring(response: 0.25)) {
                    scale = 1.15
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.spring(response: 0.25)) {
                        scale = 1
                    }
                }
            }
    }
}
