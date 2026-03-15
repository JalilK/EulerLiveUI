import SwiftUI

public extension AnyTransition {

    static var bannerSlide: AnyTransition {
        .move(edge: .top).combined(with: .opacity)
    }
}
