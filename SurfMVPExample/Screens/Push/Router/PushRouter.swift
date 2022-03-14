//
//  PushRouter.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import UIKit

final class PushRouter: PushRouterInput {

	// MARK: - Properties

    weak var view: ModuleTransitionable?

	// MARK: - PushRouterInput

    func closeModule() {
        /// Используем ModuleTransitionable
        view?.pop(animated: true)
    }

}
