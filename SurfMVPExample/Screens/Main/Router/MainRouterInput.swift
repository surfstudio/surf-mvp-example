//
//  MainRouterInput.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

import Foundation

protocol MainRouterInput {
    func showPushModule()
    func showPresentModule(output: PresentModuleOutput?, isHiddenLabel: Bool)
}
