//
//  PushViewTests.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import XCTest
@testable import SurfMVPExample

final class PushViewTests: XCTestCase {

    // MARK: - Properties

    private var view: PushViewController?
    private var output: PushViewOutputMock?

    // MARK: - XCTestCase

    override func setUp() {
        super.setUp()
        view = PushViewController()
        output = PushViewOutputMock()
        view?.output = output
    }

    override func tearDown() {
        super.tearDown()
        view = nil
        output = nil
    }

    // MARK: - Main tests

    // MARK: - Mocks

    private final class PushViewOutputMock: PushViewOutput {
        func viewDidLoad() {
        }
        
        func closeButtonDidTap() {
        }
        
    }

}
