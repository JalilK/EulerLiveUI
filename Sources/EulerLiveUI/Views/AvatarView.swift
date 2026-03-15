import SwiftUI

public enum AvatarShape: Equatable, Sendable {
    case circle
    case roundedRectangle(cornerRadius: CGFloat)
}

public struct AvatarView<Accessory: View>: View {
    @Environment(\.eulerLiveTheme) private var theme

    public let model: AvatarModel
    public let size: CGFloat
    public let shape: AvatarShape
    public let borderWidth: CGFloat
    public let borderColor: Color?
    public let accessibilityLabel: String?

    private let accessory: () -> Accessory

    public init(
        model: AvatarModel,
        size: CGFloat = 52,
        shape: AvatarShape = .circle,
        borderWidth: CGFloat = 0,
        borderColor: Color? = nil,
        accessibilityLabel: String? = nil,
        @ViewBuilder accessory: @escaping () -> Accessory
    ) {
        self.model = model
        self.size = size
        self.shape = shape
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.accessibilityLabel = accessibilityLabel
        self.accessory = accessory
    }

    public var body: some View {
        ZStack(alignment: .bottomTrailing) {
            avatarBody
            accessory()
        }
        .frame(width: size, height: size)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(accessibilityLabel ?? "Avatar for \(model.displayName)")
    }

    @ViewBuilder
    private var avatarBody: some View {
        switch shape {
        case .circle:
            AsyncImage(url: model.avatarURL) { phase in
                switch phase {
                case .success(let image):
                    image.resizable().scaledToFill()
                default:
                    initialsPlaceholder
                }
            }
            .frame(width: size, height: size)
            .background(theme.surface)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(borderColor ?? theme.border, lineWidth: borderWidth)
            )

        case .roundedRectangle(let cornerRadius):
            AsyncImage(url: model.avatarURL) { phase in
                switch phase {
                case .success(let image):
                    image.resizable().scaledToFill()
                default:
                    initialsPlaceholder
                }
            }
            .frame(width: size, height: size)
            .background(theme.surface)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(borderColor ?? theme.border, lineWidth: borderWidth)
            )
        }
    }

    private var initialsPlaceholder: some View {
        ZStack {
            theme.surface
            Text(model.fallbackInitials)
                .font(.system(size: size * 0.34, weight: .semibold))
                .foregroundStyle(theme.primaryText)
                .minimumScaleFactor(0.7)
                .lineLimit(1)
        }
    }
}

public extension AvatarView where Accessory == EmptyView {
    init(
        model: AvatarModel,
        size: CGFloat = 52,
        shape: AvatarShape = .circle,
        borderWidth: CGFloat = 0,
        borderColor: Color? = nil,
        accessibilityLabel: String? = nil
    ) {
        self.init(
            model: model,
            size: size,
            shape: shape,
            borderWidth: borderWidth,
            borderColor: borderColor,
            accessibilityLabel: accessibilityLabel
        ) {
            EmptyView()
        }
    }
}
