import SwiftUI

public extension AnyTransition {

    static var riseFade: AnyTransition {
        .move(edge: .bottom).combined(with: .opacity)
    }
}
