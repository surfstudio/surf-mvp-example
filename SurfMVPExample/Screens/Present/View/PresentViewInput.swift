//
//  PresentViewInput.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

protocol PresentViewInput: AnyObject {
    func setupInitialState()
    func changeButtonTitle(text: String)
}
