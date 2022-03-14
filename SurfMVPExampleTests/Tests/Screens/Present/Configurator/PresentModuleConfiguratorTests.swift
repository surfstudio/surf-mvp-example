//
//  PresentModuleConfiguratorTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PresentModuleConfiguratorTests: XCTestCase {

	// MARK: - Main tests

    func testThatViewControllerLoadsCorrectly() {
        if UIStoryboard(name: String(describing: PresentViewController.self),
                        bundle: Bundle.main).instantiateInitialViewController() == nil {
            XCTFail("Can't load PresentViewController from storyboard, check that controller is initial view controller")
        }
    }

    func testThatScreenConfiguresCorrectly() {
        // when
        let viewController = PresentModuleConfigurator().configure(isHiddenLabel: false)

        // then
        XCTAssertNotNil(viewController.output, "PresentViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PresentPresenter, "output is not PresentPresenter")

        guard let presenter: PresentPresenter = viewController.output as? PresentPresenter else {
            XCTFail("Cannot assign viewController.output as PresentPresenter")
            return
        }

        XCTAssertNotNil(presenter.view, "view in PresentPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PresentPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PresentRouter, "router is not PresentRouter")

        guard let router: PresentRouter = presenter.router as? PresentRouter else {
            XCTFail("Cannot assign presenter.router as PresentRouter")
            return
        }

        XCTAssertTrue(router.view is PresentViewController, "view in router is not PresentViewController")
    }

}
