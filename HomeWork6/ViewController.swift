//
//  ViewController.swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {


    
    let catToy = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()

    }
    
    private func setupSubviews() {
        catToy.backgroundColor = .red
        self.view.addSubview(catToy)
        let superVievHeight = self.view.bounds.height
        let superVievWidth = self.view.bounds.width
        catToy.frame = CGRect(x: Double(superVievWidth / 2 - 25), y: Double(superVievHeight / 2 - 25), width: 50, height: 50)
        catToy.layer.cornerRadius = 25.0
        
        catToy.addTarget(self, action: #selector(btnTouched), for: .touchUpInside)
        self.view.addSubview(catToy)
    }
    
    @objc private func btnTouched(){
        let superVievHeight = self.view.bounds.height
        let superVievWidth = self.view.bounds.width
        let maxY = superVievHeight - 50
        let maxX = superVievWidth - 50
        catToy.frame = CGRect(
            x: Double(Int.random(in: 0..<Int(maxX))),
            y:Double(Int.random(in:0..<Int(maxY))),
        width: 50,
        height: 50)
        catToy.layer.cornerRadius = 25.0

        
        
    }
    
    

}

