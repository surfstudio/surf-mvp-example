//
//  MainViewController.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController, MainViewInput, ModuleTransitionable {

    // MARK: - Outlets

    @IBOutlet private weak var pushButton: UIButton!
    @IBOutlet private weak var presentButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Properties

    var output: MainViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }

    // MARK: - MainViewInput

    func setupInitialState(model: MainPresenterModel) {
        configureAppearance(model: model)
    }

    func setupLabelHidden(with state: Bool) {
        titleLabel.isHidden = state
    }

    func setupLabelState(state: Bool) {
        titleLabel.isHidden = state
    }

}

// MARK: - Private Methods

private extension MainViewController {

    func configureAppearance(model: MainPresenterModel) {
        configureNavigationController(with: model.title)
        configureLabel(with: model.titleLabel)
        configureButtons(with: model)
    }

    func configureNavigationController(with navigationBarTitle: String) {
        title = navigationBarTitle
    }

    func configureLabel(with title: String) {
        titleLabel.text = title
    }

    func configureButtons(with model: MainPresenterModel) {
        pushButton.setTitle(model.pushButtonTitle, for: [])
        pushButton.backgroundColor = .blue

        presentButton.setTitle(model.presentButtonTitle, for: [])
        presentButton.backgroundColor = .red

        [pushButton, presentButton].forEach {
            $0?.tintColor = .white
            $0?.layer.cornerRadius = 8
        }
    }

}

// MARK: - Actions

private extension MainViewController {

    @IBAction func pushButtonDidTap(_ sender: Any) {
        output?.pushButtonDidTap()
    }

    @IBAction func presentButtonDidTap(_ sender: Any) {
        output?.presentButtonDidTap()
    }

}


