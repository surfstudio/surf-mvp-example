//
//  PushModuleConfigurator.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class PushModuleConfigurator {

    // MARK: - Internal methods

    func configure(output: PushModuleOutput? = nil) -> UIViewController {
        guard let view = UIStoryboard(name: String(describing: PushViewController.self),
                                      bundle: Bundle.main).instantiateInitialViewController() as? PushViewController else {
            fatalError("Can't load PushViewController from storyboard, check that controller is initial view controller")
        }
        let presenter = PushPresenter()
        let router = PushRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        return view
    }

}
