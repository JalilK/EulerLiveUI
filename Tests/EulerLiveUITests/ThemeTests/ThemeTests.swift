import Testing
@testable import EulerLiveUI

struct ThemeTests {
    @Test
    func themesExposeDistinctCornerRadius() {
        #expect(EulerLiveTheme.default.cornerRadius != EulerLiveTheme.darkNeon.cornerRadius)
    }

    @Test
    func minimalLightUsesPositiveAnimationDuration() {
        #expect(EulerLiveTheme.minimalLight.animationDuration > 0)
    }
}
