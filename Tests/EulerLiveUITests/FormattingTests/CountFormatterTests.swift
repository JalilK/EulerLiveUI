import Testing
@testable import EulerLiveUI

struct CountFormatterTests {
    @Test
    func formattingThousands() {
        #expect(CountFormatter.format(1200) == "1.2K")
    }

    @Test
    func formattingMillions() {
        #expect(CountFormatter.format(1_200_000) == "1.2M")
    }
}
