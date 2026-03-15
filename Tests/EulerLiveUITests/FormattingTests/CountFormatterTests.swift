import XCTest
@testable import EulerLiveUI

final class CountFormatterTests: XCTestCase {
    func testFormattingThousands() {
        XCTAssertEqual(CountFormatter.format(1200), "1.2K")
    }

    func testFormattingMillions() {
        XCTAssertEqual(CountFormatter.format(1_200_000), "1.2M")
    }
}
