import SwiftUI

public struct ViewerCountView: View {
    public let count: Int

    public init(count: Int) {
        self.count = count
    }

    public var body: some View {
        CountPillView(
            model: CountPillModel(
                title: "Viewers",
                countText: CountFormatter.format(count),
                systemImageName: "eye.fill"
            )
        )
    }
}
