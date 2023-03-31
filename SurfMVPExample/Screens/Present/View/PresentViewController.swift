//
//  PresentViewController.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class PresentViewController: UIViewController, PresentViewInput, ModuleTransitionable {

    // MARK: - Private Properties

    @IBOutlet private weak var changeLabelStateButton: UIButton!

    // MARK: - Properties

    var output: PresentViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }

    // MARK: - PresentViewInput

    func setupInitialState() {
        configureAppearance()
    }

    func changeButtonTitle(text: String) {
        changeLabelStateButton.setTitle(text, for: [])
    }

}

// MARK: - Private Methods

private extension PresentViewController {

    func configureAppearance() {
        configureButton()
    }

    func configureButton() {
        changeLabelStateButton.tintColor = .blue
        changeLabelStateButton.titleLabel?.numberOfLines = 0
    }

}

// MARK: - Actions

private extension PresentViewController {

    @IBAction func changeLabelStateButtonDidTap(_ sender: Any) {
        output?.changeButtonDidTap()
    }

}
