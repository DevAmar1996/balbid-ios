//
//  ShippingAdressRoute.swift
//  balbid
//
//  Created by Memo Amassi on 31/01/2021.
//

import UIKit
import AppRouter

class ShippingAdressRoute: Route {
    var navigateType: NavigateType {
        return .push
    }
    
    func create(_ router: AppRouter, _ params: [String : Any]?) -> UIViewController {
        let viewController = UIStoryboard.shippingStoryboard.getViewController(with: .shippingAdressViewController)
        return viewController
    }
    
}
