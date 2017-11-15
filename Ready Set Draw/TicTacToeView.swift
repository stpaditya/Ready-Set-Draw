//
//  TicTacToeView.swift
//  Ready Set Draw
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/14/17.
//  Copyright © 2017 Srimat Tirumala Pallerlamudi,Aditya. All rights reserved.
//

import UIKit

@IBDesignable class TicTacToeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

    
    
    override func draw(_ rect: CGRect) {
        
        let bezier = UIBezierPath()
        let size = self.frame.size
        
        bezier.move(to:CGPoint(x:30.0,y:size.height/3))
        bezier.addLine(to: CGPoint(x:(size.width-30), y:size.height/3))
        bezier.move(to:CGPoint(x:30.0,y:size.height*2/3))
        bezier.addLine(to: CGPoint(x:(size.width-30), y:size.height*2/3))
        bezier.move(to:CGPoint(x:size.width/3,y:30.0))
        bezier.addLine(to: CGPoint(x:size.width/3, y:size.height-30))
        bezier.move(to:CGPoint(x:size.width*2/3,y:30.0))
        bezier.addLine(to: CGPoint(x:size.width*2/3, y:size.height-30))
        
        UIColor.black.setStroke()
        bezier.lineWidth = 5
        
        bezier.stroke()
        
        
//        var aPath = UIBezierPath()
//        
//        aPath.moveToPoint(CGPoint(x:size.width, y:size.height))
//        
//        aPath.addLineToPoint(CGPoint(x:/*Put Next Location*/, y:/*Put Next Location*/))
//        
//        //Keep using the method addLineToPoint until you get to the one where about to close the path
//        
//        aPath.closePath()
//        
//        //If you want to stroke it with a red color
//        UIColor.redColor().set()
//        aPath.stroke()
//        //If you want to fill it as well
//        aPath.fill()
    }

}