//
//  ModalViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 23.02.2022.
//

import UIKit

class ModalViewController: UIViewController {
    

    var colorful = true
    var name:String? = nil
    @IBOutlet weak var field: UITextField!
    
    @IBAction func switchPressed(_ sender: UISwitch ) {
        colorful = sender.isOn
    }
    @IBAction func saving(_ sender: Any) {
        name = field.text
        if let ParentViewController = self.presentingViewController as? MainViewController {
        ParentViewController.colarful = colorful
        ParentViewController.name = name
        ParentViewController.score = 0
            
        }
        dismiss(animated: true, completion:nil)
    }
}
