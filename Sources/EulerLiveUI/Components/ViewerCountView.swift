import SwiftUI

public struct ViewerCountView: View {

    public let count: Int

    public init(count: Int) {
        self.count = count
    }

    public var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "eye.fill")
            Text("\(count)")
                .fontWeight(.semibold)
        }
        .padding(6)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
    }
}
