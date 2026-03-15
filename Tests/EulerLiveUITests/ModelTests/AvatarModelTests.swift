import Testing
@testable import EulerLiveUI

struct AvatarModelTests {
    @Test
    func fallbackInitialsUsesTwoWords() {
        let model = AvatarModel(
            id: "1",
            displayName: "Jalil Kennedy"
        )

        #expect(model.fallbackInitials == "JK")
    }

    @Test
    func fallbackInitialsUsesSingleWord() {
        let model = AvatarModel(
            id: "1",
            displayName: "Euler"
        )

        #expect(model.fallbackInitials == "E")
    }
}
