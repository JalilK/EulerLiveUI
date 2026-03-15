import XCTest
@testable import EulerLiveUI

final class ThemeTests: XCTestCase {
    func testThemesExposeDistinctCornerRadius() {
        XCTAssertNotEqual(EulerLiveTheme.default.cornerRadius, EulerLiveTheme.darkNeon.cornerRadius)
    }

    func testMinimalLightUsesFastAnimation() {
        XCTAssertGreaterThan(EulerLiveTheme.minimalLight.animationDuration, 0)
    }
}
