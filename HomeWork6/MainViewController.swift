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
    
    // MARK: - Private methods
    
    private func calculateBestScore(){
        bestScore = max(score,bestScore ?? 0)
        
        nameLabel.text = "Nickname: \(name ?? "")"
        scoreLabel.text = "Your best score: \(bestScore ?? 0)"
    }
    
    // MARK: - Override methods

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        calculateBestScore()
        print("iewWillLayoutSubviews")
    }
    
    @IBAction func settingButtonPressed(_ sender: UIButton) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "settingViewContr") as? ModalViewController else {return}
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func gameButtonPressed(_ sender: UIButton) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "viewContr") as? ViewController else {return}
        viewController.colarful = colarful
        viewController.name = name ?? ""
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
