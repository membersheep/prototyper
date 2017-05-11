//
//  Prototyper.swift
//  Prototyper
//
//  Created by Alessandro Maroso on 11/05/2017.
//  Copyright © 2017 Alessandro Maroso. All rights reserved.
//

import UIKit

public struct Prototyper {
    public static var currentController: UIViewController {
        get {
            return OnboardingViewController(viewModel: OnboardingViewModelMock())
        }
    }
}
