//
//  DrawingView.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 12/5/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    

    override public func draw(_ rect: CGRect)
    {
    drawStickFigure().stroke()
    drawTurtle().fill()
    drawMissle().fill()
    }

    private func drawStickFigure() -> UIBezierPath
    {
    let stickFigure = UIBezierPath()
    
    UIColor.blue.setStroke()
    stickFigure.lineWidth = 3.0
    
    stickFigure.addArc(withCenter: CGPoint(x: 200, y: 220),
                       radius: CGFloat(20),
                       startAngle:CGFloat(0),
                       endAngle: CGFloat(2) * CGFloat.pi,
                       clockwise:true)
    stickFigure.move(to: CGPoint(x: 200, y: 220))
    stickFigure.addLine(to: CGPoint(x: 200, y: 270))
    stickFigure.move(to: CGPoint(x: 180, y: 240))
    stickFigure.addLine(to: CGPoint(x: 220, y: 240))
    stickFigure.move(to: CGPoint(x: 200, y: 270))
    stickFigure.addLine(to: CGPoint(x: 180, y: 300))
    stickFigure.move(to: CGPoint(x: 200, y: 270))
    stickFigure.addLine(to: CGPoint(x: 200, y: 300))
                       
    return stickFigure
    }
    
    private func drawTurtle() -> UIBezierPath
    {
        let logo = UIBezierPath()
        UIColor.blue.setStroke()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 300))
        logo.close()
        logo.fill()
        
        return logo
    }
    private func drawMissle() -> UIBezierPath
    {
        let missle = UIBezierPath()
        UIColor.blue.setStroke()
        missle.move(to:CGPoint(x: 100, y: 60))
        missle.addLine(to:CGPoint(x: 200, y: 120))
        missle.addLine(to:CGPoint(x: 150, y: 130))
        missle.addLine(to:CGPoint(x: 160, y: 140))
        missle.addLine(to:CGPoint(x: 180, y: 190))
        missle.addLine(to:CGPoint(x: 190, y: 180))
        missle.addLine(to:CGPoint(x: 140, y: 160))
        missle.addLine(to:CGPoint(x: 130, y: 150))
        missle.addLine(to:CGPoint(x: 120, y: 200))
        missle.close()
        missle.fill()
        
        return missle
    }
}

