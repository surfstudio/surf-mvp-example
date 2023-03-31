//
//  MainRouter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class MainRouter: MainRouterInput {

	// MARK: - Properties

    weak var view: ModuleTransitionable?

	// MARK: - MainRouterInput

    func showPushModule() {
        let pushViewController = PushModuleConfigurator().configure()
        view?.push(module: pushViewController, animated: true)
    }

    func showPresentModule(output: PresentModuleOutput?, isHiddenLabel: Bool) {
        let presentViewController = PresentModuleConfigurator().configure(output: output, isHiddenLabel: isHiddenLabel)
        view?.presentModule(presentViewController, animated: true, completion: nil)
    }

}
