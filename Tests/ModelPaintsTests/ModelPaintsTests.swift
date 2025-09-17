import XCTest
@testable import PaintPalettes
#if canImport(SwiftUI)
import SwiftUI
#endif

final class ColorTests: XCTestCase {
    func testHexInitializer() {
        #if canImport(SwiftUI)
        XCTAssertNotNil(Color(hex: PaintPalettes.CitadelLike.mephistonRed))
        #endif
    }
}
