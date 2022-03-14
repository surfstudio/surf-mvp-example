//
//  PresentPresenterTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PresentPresenterTest: XCTestCase {

    // MARK: - Properties

    private var presenter: PresentPresenter?
    private var view: MockViewController?
    private var output: MockModuleOutput?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        presenter = PresentPresenter(isHiddenLabel: false)
        presenter?.router = MockRouter()
        view = MockViewController()
        presenter?.view = view
        output = MockModuleOutput()
        presenter?.output = output
    }

    override func tearDown() {
        super.tearDown()
        presenter = nil
        view = nil
    }

    // MARK: - Main tests

    // MARK: - Mocks

    private final class MockRouter: PresentRouterInput {
    }

    private final class MockViewController: PresentViewInput {
        func setupInitialState() {

        }
        
        func changeButtonTitle(text: String) {
        }
        
    }

    private final class MockModuleOutput: PresentModuleOutput {
        func changeLabelState() {
        }
        
    }

}
