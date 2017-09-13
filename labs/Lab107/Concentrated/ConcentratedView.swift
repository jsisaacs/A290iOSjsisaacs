//
//  ConcentratedView.swift
//  Concentrated
//
//  Created by Josh Isaacson - Work on 9/13/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//
import UIKit

class ConcentratedView: UIView {
    override func draw(_ rect: CGRect) {
        let myPath = UIBezierPath()
        
        myPath.addArc(withCenter: CGPoint.init(x: 40.0, y: 10.0),
                      radius: 30.0,
                      startAngle: 0.0,
                      endAngle: CGFloat(Double.pi * 2),
                      clockwise: true)
        
        for n in 0..<10 {
            let radius = CGFloat(5 * n)
            //
            let myPath = UIBezierPath()
            
            myPath.addArc(withCenter: CGPoint.init(x: 40.0, y: 10.0),
                          radius: radius,
                          startAngle: 0.0,
                          endAngle: CGFloat(Double.pi * 2),
                          clockwise: true)
            myPath.stroke()
        }
        myPath.stroke()
        
    }
}
