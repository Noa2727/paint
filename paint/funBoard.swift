//
//  funBoard.swift
//  paint
//
//  Created by Noa Naider on 5.8.2018.
//  Copyright © 2018 Noa Naider. All rights reserved.
//

import UIKit

class funboard: UIView {
    
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var Path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        lineColor = UIColor.white
        lineWidth = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startingPoint = touch?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        
        Path = UIBezierPath()
        Path.move(to: startingPoint)
        Path.addLine(to: touchPoint)
        startingPoint = touchPoint
        
        drawShapeLayer()
    }
    
    func drawShapeLayer(){
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = Path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
    func clearBoard(){
        Path.removeAllPoints()
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
    


}
