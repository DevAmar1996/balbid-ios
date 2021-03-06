//
//  LoginRoute.swift
//  balbid
//
//  Created by Qamar Nahed on 15/12/2020.
//

import UIKit
import AppRouter

class LoginOptionRoute: Route {
    var modalPresentationStyle: UIModalPresentationStyle {
        return .fullScreen
    }

    var animatedTransitioningDelegate: UIViewControllerTransitioningDelegate? {
        return nil
    }

    var navigateType: NavigateType {
        .windowRoot
    }

    func create(_ router: AppRouter, _ params: [String: Any]?) -> UIViewController {
        let navigationController = UIStoryboard.authStoryboard.getViewController(with: .loginNavigationViewControllerId) as!  AppNavigationController
        return navigationController
    }
}
