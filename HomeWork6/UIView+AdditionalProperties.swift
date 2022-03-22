//
//  UIView+AdditionalProperties .swift
//  HomeWork6
//
//  Created by Dmitriy Budanov on 22.03.2022.
//

import UIKit

extension UIView {
    
    func roundCorners(withRadius radius:CGFloat){
        self.layer.cornerRadius = radius
    }
    
    func makeRound(){
        let sideSize = min(self.frame.width,self.frame.height)
        roundCorners(withRadius: sideSize / 2 )
    
    }
    
    func addGradient(with colors:[UIColor]){
        let gradient = CAGradientLayer()
        
        gradient.frame = self.bounds
        gradient.colors = colors.map{ $0.cgColor }
        gradient.cornerRadius = self.layer.cornerRadius
        gradient.startPoint = CGPoint(x: Int.random(in: 0...1), y: Int.random(in: 0...1))
        gradient.endPoint = CGPoint(x: Int.random(in: 0...1), y: Int.random(in: 0...1))
        self.layer.insertSublayer(gradient, at: 0)
    
    }
    
    func addShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 10
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
    }

}

