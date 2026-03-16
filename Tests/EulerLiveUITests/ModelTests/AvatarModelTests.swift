import XCTest
@testable import EulerLiveUI

final class AvatarModelTests: XCTestCase {
    func testFallbackInitialsUsesTwoWords() {
        let model = AvatarModel(id: "1", displayName: "Jalil Kennedy")
        XCTAssertEqual(model.fallbackInitials, "JK")
    }

    func testFallbackInitialsUsesSingleWord() {
        let model = AvatarModel(id: "1", displayName: "Euler")
        XCTAssertEqual(model.fallbackInitials, "E")
    }
}
