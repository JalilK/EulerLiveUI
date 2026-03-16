import XCTest
@testable import EulerLiveUI

final class AvatarViewTests: XCTestCase {
    func testAvatarViewCanBeConstructed() {
        let model = AvatarModel(
            id: "1",
            displayName: "Euler"
        )

        let view = AvatarView(model: model)

        XCTAssertTrue(String(describing: type(of: view)).contains("AvatarView"))
    }

    func testRoundedAvatarViewCanBeConstructed() {
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

        XCTAssertTrue(String(describing: type(of: view)).contains("AvatarView"))
    }
}
