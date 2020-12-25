//
//  NibViewController.swift .swift
//  MSA
//
//  Created by Salah Amassi on 10/10/20.
//  Copyright © 2020 msa. All rights reserved.
//

import UIKit
import AppRouter

class NibViewController: UIViewController {

    private (set) var nibFileName: String?

    private (set) var viewControlleTitle: String?

    @available(iOS 12.0, *)
    var isDarkMode: Bool {
        UserDefaultsManager.isDarkMode || traitCollection.userInterfaceStyle == .dark
    }

    init() {
        super.init(nibName: nibFileName, bundle: .main)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = isDarkMode ? .dark : .light
        }
    }

    required init?(coder: NSCoder) {
        fatalError("Fuck storyboard!")
    }
}
