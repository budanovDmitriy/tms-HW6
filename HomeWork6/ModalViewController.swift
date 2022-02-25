//
//  ModalViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 23.02.2022.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var runningRoundView: UIView!

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupSubviews()
        
    }
        // Do any additional setup after loading the view.

    private func setupSubviews() {
        runningRoundView.backgroundColor = .green
        runningRoundView.layer.cornerRadius = 25.0
        runningRoundView.frame =
        CGRect( x:super.view.bounds.width / 2 - 25, y: super.view.bounds.height / 2 - 25 , width: 50, height: 50)
        super.view.addSubview(runningRoundView)
        
        arrowUp.addTarget(self, action: #selector(arrowDowning), for: .touchUpInside)
        arrowDown.addTarget(self, action: #selector(arrowDowning), for: .touchUpInside)
        arrowLeft.addTarget(self, action: #selector(arrowLefting), for: .touchUpInside)
        arrowRight.addTarget(self, action: #selector(arrowRighting), for: .touchUpInside)
    }
    @IBOutlet weak var arrowUp: UIButton!
    
    @IBOutlet weak var arrowDown: UIButton!
    @IBOutlet weak var arrowLeft: UIButton!
    @IBOutlet weak var arrowRight: UIButton!
    
    
    
        @objc private func arrowUping(_ sender: Any) {
            if
                runningRoundView.frame.origin.y > 25 {
            runningRoundView.frame = CGRect(x:runningRoundView.frame.origin.x  , y: runningRoundView.frame.origin.y + 10, width: 50, height: 50)
            }
        
    }
        @objc private func arrowDowning(_ sender: Any) {
            if runningRoundView.frame.origin.y < self.view.bounds.height - 25 {
                runningRoundView.frame = CGRect(x:runningRoundView.frame.origin.x  , y: runningRoundView.frame.origin.y + 10, width: 50, height: 50)
                
            }
    }
   
        @objc private func arrowRighting(_ sender: Any) {
            if runningRoundView.frame.origin.x < self.view.bounds.width - 25  {
            runningRoundView.frame = CGRect(x:runningRoundView.frame.origin.x + 20 , y: runningRoundView.frame.origin.y, width: 50, height: 50)
            }
    }
        @objc private func arrowLefting(
        _ sender: Any) {
            if runningRoundView.frame.origin.x >  25  {
            runningRoundView.frame = CGRect(x:runningRoundView.frame.origin.x - 10 , y: runningRoundView.frame.origin.y, width: 50, height: 50)
            }
    }
}
