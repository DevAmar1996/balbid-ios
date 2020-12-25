//
//  ForgetPasswordCodeRoute.swift
//  balbid
//
//  Created by Qamar Nahed on 17/12/2020.
//

import UIKit
class ForgetPasswordCodeRoute: Route {

    var modalPresentationStyle: UIModalPresentationStyle {
        .fullScreen
    }

    var animatedTransitioningDelegate: UIViewControllerTransitioningDelegate? {
         nil
    }

    var navigateType: NavigateType {
         .push

    }

    func create(_ router: AppRouter, _ params: [String: Any]?) -> UIViewController {
        let viewController = UIStoryboard.authStoryboard.getViewController(with: .forgetPasswordCodeViewControllerId) as!  BaseViewController
        viewController.router = router
        return viewController
    }
}
