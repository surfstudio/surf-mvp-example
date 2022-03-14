//
//  PushViewController.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class PushViewController: UIViewController, PushViewInput, ModuleTransitionable {

    // MARK: - Outlets

    @IBOutlet private weak var closeButton: UIButton!

    // MARK: - Properties

    var output: PushViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }

    // MARK: - PushViewInput

    func setupInitialState(buttonTitle: String) {
        configureAppearance(with: buttonTitle)
    }

}

// MARK: Private Methods

private extension PushViewController {
    
    func configureAppearance(with buttonTitle: String) {
        configureButton(with: buttonTitle)
    }
    
    func configureButton(with title: String) {
        closeButton.setTitle(title, for: [])
        closeButton.tintColor = .blue
    }
    
}

// MARK: - Actions

private extension PushViewController {

    @IBAction func buttonDidTap(_ sender: Any) {
        output?.closeButtonDidTap()
    }

}
