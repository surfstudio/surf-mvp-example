//
//  PushPresenterTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PushPresenterTest: XCTestCase {

    // MARK: - Properties

    private var presenter: PushPresenter?
    private var view: MockViewController?
    private var output: MockModuleOutput?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        presenter = PushPresenter()
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

    private final class MockRouter: PushRouterInput {
        func closeModule() {
        }
        func setupInitialState() {
        }
        
        
    }

    private final class MockViewController: PushViewInput {
        func setupInitialState() {
        }
        
    }

    private final class MockModuleOutput: PushModuleOutput {
    }

}
