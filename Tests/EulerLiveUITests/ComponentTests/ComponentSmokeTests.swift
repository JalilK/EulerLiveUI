import Testing
@testable import EulerLiveUI

struct ComponentSmokeTests {
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
    func toastBannerViewCanBeConstructed() {
        let view = ToastBannerView(
            model: ToastBannerModel(title: "Hello")
        )

        #expect(String(describing: type(of: view)).contains("ToastBannerView"))
    }
}
