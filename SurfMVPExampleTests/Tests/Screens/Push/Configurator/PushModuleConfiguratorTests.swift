//
//  PushModuleConfiguratorTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PushModuleConfiguratorTests: XCTestCase {

	// MARK: - Main tests

    func testThatViewControllerLoadsCorrectly() {
        if UIStoryboard(name: String(describing: PushViewController.self),
                        bundle: Bundle.main).instantiateInitialViewController() == nil {
            XCTFail("Can't load PushViewController from storyboard, check that controller is initial view controller")
        }
    }

    func testThatScreenConfiguresCorrectly() {
        // when
        let viewController = PushModuleConfigurator().configure()

        // then
        XCTAssertNotNil(viewController.output, "PushViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PushPresenter, "output is not PushPresenter")

        guard let presenter: PushPresenter = viewController.output as? PushPresenter else {
            XCTFail("Cannot assign viewController.output as PushPresenter")
            return
        }

        XCTAssertNotNil(presenter.view, "view in PushPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PushPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PushRouter, "router is not PushRouter")

        guard let router: PushRouter = presenter.router as? PushRouter else {
            XCTFail("Cannot assign presenter.router as PushRouter")
            return
        }

        XCTAssertTrue(router.view is PushViewController, "view in router is not PushViewController")
    }

}
