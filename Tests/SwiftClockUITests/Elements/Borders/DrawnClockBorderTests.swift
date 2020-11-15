import XCTest
@testable import SwiftClockUI
import SnapshotTesting
import SwiftUI

class DrawnClockBorderTests: XCTestCase {
    #if !os(macOS)
    func testDrawnClockBorder() {
        let drawnClockBorder = DrawnClockBorder_Previews.previews
            .environment(\.clockIsAnimationEnabled, false)
            .environment(\.clockRandom, .fixed)
        assertSnapshot(matching: drawnClockBorder, as: .default)
    }
    #endif
}
