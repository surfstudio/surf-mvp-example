//
//  PresentViewTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PresentViewTests: XCTestCase {

    // MARK: - Properties

    private var view: PresentViewController?
    private var output: PresentViewOutputMock?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        view = PresentViewController()
        output = PresentViewOutputMock()
        view?.output = output
    }

    override func tearDown() {
        super.tearDown()
        view = nil
        output = nil
    }

    // MARK: - Main tests

    // MARK: - Mocks

    private final class PresentViewOutputMock: PresentViewOutput {
        func viewDidLoad() {
        }
        
        func changeButtonDidTap() {
        }
        
    }

}
