//
//  MainViewInput.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

protocol MainViewInput: AnyObject {
    func setupInitialState(model: MainPresenterModel)
    func setupLabelState(state: Bool)
}
