//
//  MainViewTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class MainViewTests: XCTestCase {

    // MARK: - Properties

    private var view: MainViewController?
    private var output: MainViewOutputMock?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        view = MainViewController()
        output = MainViewOutputMock()
        view?.output = output
    }

    override func tearDown() {
        super.tearDown()
        view = nil
        output = nil
    }

    // MARK: - Main tests

    // MARK: - Mocks

    private final class MainViewOutputMock: MainViewOutput {
        func viewDidLoad() {

        }
        
        func pushButtonDidTap() {

        }
        
        func presentButtonDidTap() {

        }
        
    }

}
