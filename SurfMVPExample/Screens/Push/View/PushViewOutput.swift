//
//  PushViewOutput.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

protocol PushViewOutput {
    func viewDidLoad()
    /// Обработка нажатия закрытия
    func closeButtonDidTap()
}
