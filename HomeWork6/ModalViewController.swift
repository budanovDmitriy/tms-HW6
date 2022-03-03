//
//  ModalViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 23.02.2022.
//

import UIKit

class ModalViewController: UIViewController {
    
    // MARK: - Public properties

    var colorful = true
    var name:String? = nil
    
    // MARK: - IBOutlets

    @IBOutlet weak var field: UITextField!
    // MARK: - IBActions
    
    @IBAction func switchPressed(_ sender: UISwitch ) {
        colorful = sender.isOn
    }
    @IBAction func saving(_ sender: Any) {
        name = field.text
        let allControllers : [UIViewController] = navigationController?.viewControllers ?? []
        for controllers in allControllers {
                guard let mainViewController = controllers as? MainViewController
            else {continue}
            mainViewController.colarful = colorful
            mainViewController.name = name
            mainViewController.score = 0
            navigationController?.popViewController(animated: true)
        }
        dismiss(animated: true, completion:nil)
    }
}
