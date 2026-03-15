import SwiftUI
import XCTest
@testable import EulerLiveUI

final class ComponentSmokeTests: XCTestCase {
    func testAvatarViewCanBeConstructed() {
        let model = AvatarModel(id: "1", displayName: "Euler")
        let view = AvatarView(model: model)
        XCTAssertNotNil(view)
    }

    func testToastBannerViewCanBeConstructed() {
        let view = ToastBannerView(model: ToastBannerModel(title: "Hello"))
        XCTAssertNotNil(view)
    }
}
