//
//  MainModuleConfigurator.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class MainModuleConfigurator {

    // MARK: - Internal methods

    func configure(output: MainModuleOutput? = nil) -> UIViewController {
        guard let view = UIStoryboard(name: String(describing: MainViewController.self),
                                      bundle: Bundle.main).instantiateInitialViewController() as? MainViewController else {
            fatalError("Can't load MainViewController from storyboard, check that controller is initial view controller")
        }
        let presenter = MainPresenter()
        let router = MainRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        return view
    }

}
