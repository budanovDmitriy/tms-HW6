//
//  ViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 23.02.2022.
//

import UIKit


class ViewController: UIViewController {

    // MARK: - Public properties

    var name = ""
    var score:Int = 0
    var colarful = false
    var circleRadius:CGFloat = 0
    
    // MARK: - IBOutlets

    @IBOutlet weak var catToy: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // MARK: - Override methods

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupCircleView()
        
    }
    
    private func setupCircleView() {
        circleRadius = 50
        let superViewHeight = self.view.bounds.height
        let superViewWidth = self.view.bounds.width
        catToy.frame = CGRect(x: superViewWidth / 2 - circleRadius/2, y: superViewHeight / 2 - circleRadius/2, width: circleRadius, height: circleRadius)
        catToy.makeRound()
        catToy.addGradient(with: [UIColor.rgb(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue:CGFloat( arc4random_uniform(255))),UIColor.rgb(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue:CGFloat( arc4random_uniform(255)))])
        catToy.addShadow()
        self.view.layoutIfNeeded()
    }
    
    // MARK: - IBActions
    
    @IBAction func btnTouched(_ sender: Any) {
        score = score + 1
        scoreLabel.text = "\(name) your score: \(score)"
        let superVievHeight = self.view.bounds.height
        let superVievWidth = self.view.bounds.width
        let maxY = superVievHeight - CGFloat(circleRadius)
        let maxX = superVievWidth - CGFloat(circleRadius)
        catToy.frame.origin.x = CGFloat.random(in:CGFloat(circleRadius/2)...maxX )
        catToy.frame.origin.y = CGFloat.random(in: CGFloat(circleRadius/2)...maxY)
        catToy.makeRound()
        catToy.addGradient(with: [UIColor.rgb(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue:CGFloat( arc4random_uniform(255))),UIColor.rgb(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue:CGFloat( arc4random_uniform(255)))])
        catToy.addShadow()
    }
    
    @IBAction func saving(_ sender: Any) {
        let allControllers : [UIViewController] = navigationController?.viewControllers ?? []
        for controllers in allControllers {
                guard let mainViewController = controllers as? MainViewController
            else {continue}
            mainViewController.score = score
            navigationController?.popViewController(animated: true)
        }
    }
}
extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      }
    }

