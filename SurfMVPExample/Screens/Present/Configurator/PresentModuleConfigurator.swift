//
//  PresentModuleConfigurator.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class PresentModuleConfigurator {

    // MARK: - Internal methods

    func configure(output: PresentModuleOutput? = nil, isHiddenLabel: Bool) -> UIViewController {
        guard let view = UIStoryboard(name: String(describing: PresentViewController.self),
                                      bundle: Bundle.main).instantiateInitialViewController() as? PresentViewController else {
            fatalError("Can't load PresentViewController from storyboard, check that controller is initial view controller")
        }
        let presenter = PresentPresenter(isHiddenLabel: isHiddenLabel)
        let router = PresentRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        return view
    }

}
