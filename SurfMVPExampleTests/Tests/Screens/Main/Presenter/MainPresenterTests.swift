//
//  MainPresenterTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class MainPresenterTest: XCTestCase {

    // MARK: - Properties

    private var presenter: MainPresenter?
    private var view: MockViewController?
    private var output: MockModuleOutput?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        presenter = MainPresenter()
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

    private final class MockRouter: MainRouterInput {
        func showPushModule() {
        }
        
        func showPresentModule(output: PresentModuleOutput?, isHiddenLabel: Bool) {
        }
        
    }

    private final class MockViewController: MainViewInput {
        func setupInitialState() {
        }
        
        func setupLabelState(state: Bool) {
        }
        
    }

    private final class MockModuleOutput: MainModuleOutput {
    }

}
