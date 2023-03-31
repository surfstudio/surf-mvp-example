//
//  PushPresenter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

final class PushPresenter: PushViewOutput, PushModuleInput {

    // MARK: - Constants

    private enum Constants {
        static let buttonTitle = "Close"
    }

    // MARK: - Properties

    weak var view: PushViewInput?
    var router: PushRouterInput?
    var output: PushModuleOutput?

    // MARK: - Private Properties

    // MARK: - PushViewOutput

    func viewDidLoad() {
        view?.setupInitialState(buttonTitle: Constants.buttonTitle)
    }

    func closeButtonDidTap() {
        router?.closeModule()
    }

    // MARK: - PushModuleInput

}
