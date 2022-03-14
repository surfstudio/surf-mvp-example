//
//  MainViewOutput.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11/03/2022.
//  Copyright © 2022 Surf. All rights reserved.
//

protocol MainViewOutput {
    func viewDidLoad()
    /// Обрабатываем нажатие кнопки push
    func pushButtonDidTap()
    /// Обрабатываем нажатие кнопки present
    func presentButtonDidTap()
}
