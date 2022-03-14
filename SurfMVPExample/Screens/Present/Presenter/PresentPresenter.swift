//
//  PresentPresenter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

final class PresentPresenter: PresentViewOutput, PresentModuleInput, MainModuleOutput {

    private enum Constants {
        static let hideLabelTitle = "Скрыть лейбл на предыдущем экране"
        static let showLabelTitle = "Показать лейбл на предыдущем экране"
    }

    // MARK: - Properties

    weak var view: PresentViewInput?
    var router: PresentRouterInput?
    var output: PresentModuleOutput?

    // MARK: - Private Properties

    private var isHiddenLabel: Bool

    init(isHiddenLabel: Bool) {
        self.isHiddenLabel = isHiddenLabel
    }

    // MARK: - PresentViewOutput

    // MARK: - PresentModuleInput

    func viewDidLoad() {
        view?.setupInitialState()
        editButtonTitle()
    }

    func changeButtonDidTap() {
        isHiddenLabel.toggle()
        editButtonTitle()
        output?.changeLabelState()
    }

}

// MARK: - Private Methods

private extension PresentPresenter {

    func editButtonTitle() {
        view?.changeButtonTitle(text: isHiddenLabel ? Constants.showLabelTitle : Constants.hideLabelTitle)
    }

}
