import SwiftUI

public extension AnyTransition {

    static var popIn: AnyTransition {
        .scale(scale: 0.6).combined(with: .opacity)
    }
}
