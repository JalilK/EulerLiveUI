import Testing
@testable import EulerLiveUI

struct AvatarViewTests {
    @Test
    func avatarViewCanBeConstructed() {
        let model = AvatarModel(
            id: "1",
            displayName: "Euler"
        )

        let view = AvatarView(model: model)

        #expect(String(describing: type(of: view)).contains("AvatarView"))
    }

    @Test
    func roundedAvatarViewCanBeConstructed() {
        let model = AvatarModel(
            id: "2",
            displayName: "Jalil Kennedy"
        )

        let view = AvatarView(
            model: model,
            size: 80,
            shape: .roundedRectangle(cornerRadius: 18),
            borderWidth: 2
        )

        #expect(String(describing: type(of: view)).contains("AvatarView"))
    }
}
