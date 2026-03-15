import SwiftUI

public struct LiveAvatarView: View {

    public let url: URL?
    public let size: CGFloat

    public init(url: URL?, size: CGFloat = 40) {
        self.url = url
        self.size = size
    }

    public var body: some View {

        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Circle()
                .fill(Color.gray.opacity(0.3))
        }
        .frame(width: size, height: size)
        .clipShape(Circle())
    }
}
