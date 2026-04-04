import Flutter
import UIKit
import XCTest


@testable import developer_mode_finder

// This demonstrates a simple unit test of the Swift portion of this plugin's implementation.
//
// See https://developer.apple.com/documentation/xctest for more information about using XCTest.

class RunnerTests: XCTestCase {

  func testIsDeveloperModeEnabled() {
    let plugin = DeveloperModeFinderPlugin()

    let call = FlutterMethodCall(methodName: "isDeveloperModeEnabled", arguments: [])

    let resultExpectation = expectation(description: "result block must be called.")
    plugin.handle(call) { result in
      XCTAssertTrue(result is Bool)
      resultExpectation.fulfill()
    }
    waitForExpectations(timeout: 1)
  }

}
