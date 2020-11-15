import XCTest
@testable import SwiftClockUI
import SnapshotTesting
import SwiftUI

class MoonTests: XCTestCase {
    #if !os(macOS)
    func testMoon() {
        let arms = Moon_Previews.previews.environment(\.clockIsAnimationEnabled, false)
        let hostingController = UIHostingController(rootView: arms)
        assertSnapshot(matching: hostingController, as: .image(on: .iPhoneSe))
    }
    #endif
}
