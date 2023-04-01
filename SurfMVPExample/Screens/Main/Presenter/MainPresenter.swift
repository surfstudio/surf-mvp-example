//
//  MainPresenter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//


final class MainPresenter: MainViewOutput, MainModuleInput {

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

}

// MARK: - PresentModuleOutput

/// Тут мы подписываем наш класс на протокол PresentModuleOutput
/// Чтобы он выполнял функцию делегата для PresentModule
extension MainPresenter: PresentModuleOutput {

    func changeLabelState() {
        isHiddenLabel.toggle()
        view?.setupLabelState(state: isHiddenLabel)
    }

}
