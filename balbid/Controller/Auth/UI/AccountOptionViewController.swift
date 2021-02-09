//
//  AccountOptionViewController.swift
//  balbid
//
//  Created by Qamar Nahed on 15/12/2020.
//

import UIKit
import AppRouter

class AccountOptionViewController: BaseViewController {
     override var mustClearNavigationBar: Bool {
        true
    }

    @IBOutlet weak var companyOptionView: AccountOptionView!
    @IBOutlet weak var individualOptionView: AccountOptionView!
    @IBOutlet weak var logoImageView: UIImageView!

        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func setAccountOption(_ sender: UIButton) {
        companyOptionView.isSet = sender.tag == 1
        individualOptionView.isSet = sender.tag == 0
    }

    @IBAction func proceed(sender: Any) {
        if individualOptionView.isSet {
            router?.navigate(to: .registerRoute)
        } else if companyOptionView.isSet {
            router?.navigate(to: .authCompanyMainRoute)
        }
    }
    
    

}

