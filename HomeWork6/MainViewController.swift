//
//  MainViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 01.03.2022.
//

import UIKit

class MainViewController : UIViewController {
    
    // MARK: - Public properties

    var colarful:Bool = false
    var name:String? = nil
    var score = 0
    var results = [String : Int]()
    var bestScore:Int?
    
    // MARK: - IBOutlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // MARK: - Override methods

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        bestScore = results[name ?? "" ]
        nameLabel.text = "Nickname: \(name ?? "")"
        scoreLabel.text = "Your best score: \(bestScore ?? 0)"
        if score > results[name ?? ""] ?? 0 {
            results.updateValue(score, forKey: name ?? "")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? ViewController{
        destinationViewController.colarful = colarful
            destinationViewController.name = name ?? ""
        
        }
    }
}
