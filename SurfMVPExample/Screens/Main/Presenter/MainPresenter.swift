//
//  MainPresenter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

final class MainPresenter: MainViewOutput, MainModuleInput, PresentModuleOutput {

    // MARK: - Properties

    weak var view: MainViewInput?
    var router: MainRouterInput?
    var output: MainModuleOutput?

    // MARK: - Private Properties

    private var isHiddenLabel: Bool = false

    // MARK: - MainViewOutput

    func viewDidLoad() {
        view?.setupInitialState(model: MainPresenterModel())
    }

    func pushButtonDidTap() {
        router?.showPushModule()
    }

    func presentButtonDidTap() {
        router?.showPresentModule(output: self, isHiddenLabel: isHiddenLabel)
    }

    // MARK: - MainModuleInput

    func editStateLabel(state: Bool) {
        isHiddenLabel = state
        view?.setupLabelState(state: state)
    }

    // MARK: - PresentModuleOutput

    func changeLabelState() {
        isHiddenLabel.toggle()
        view?.setupLabelState(state: isHiddenLabel)
    }

}
