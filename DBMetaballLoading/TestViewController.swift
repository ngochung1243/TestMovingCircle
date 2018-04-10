//
//  TestViewController.swift
//  DBMetaballLoading
//
//  Created by CPU12068 on 4/10/18.
//  Copyright © 2018 Sketchingame. All rights reserved.
//

import UIKit

class HMCircle: UIView {
    var radius: CGFloat = 0.0
    var transitionLayer: CAShapeLayer!
    
    override func draw(_ rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        ctx?.setFillColor(UIColor.clear.cgColor)
        ctx?.fill(rect)
        ctx?.addEllipse(in: rect)
        ctx?.setFillColor(UIColor.red.cgColor)
        ctx?.drawPath(using: .fill)
    }
    
    func scale(_ scale: CGFloat) {
        let center = self.center
        let oldFrame = self.frame
        let newWidth = oldFrame.width * scale
        let newHeight = oldFrame.height * scale
        let newFrame = CGRect(x: center.x - newWidth / 2, y: center.y - newHeight/2, width: oldFrame.width * scale, height: oldFrame.height * scale)
        self.frame = newFrame
    }
}

class TestViewController: UIViewController {
    let ball1 = HMCircle()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(ball1)
    }
    
//    func move(from fpoint: CGPoint, to tpoint: CGPoint, duration: CGFloat) {
//        
//    }
//    
//    func _metaball(circle1: HMCircle, circle2: HMCircle, curveAngle: CGFloat, handeLenRate: CGFloat, maxDistance: CGFloat) {
//        let center1 = circle1.center
//        let center2 = circle2.center
//        
//        let d = center1.distance(point: center2)
//        
//        var radius1 = 15
//        var radius2 = 15
//        
//        if (d > maxDistance) {
//            circle1.frame = CGRect(x: 100, y: 100, width: radius1 * 2, height: radius1 * 2)
//            circle2.frame = .zero
//            circle2.center = circle1.center
//        } else {
//            let scale1 = 1 - d / maxDistance
//            let scale2 = d / maxDistance
//            circle1.scale(scale1)
//            circle2.scale(scale2)
//        }
//        
//        if (radius1 == 0 || radius2 == 0) {
//            return
//        }
//        
//        var u1: CGFloat = 0.0
//        var u2: CGFloat = 0.0
//        if (d > maxDistance || d <= abs(radius1 - radius2)) {
//            return
//        } else if (d < radius1 + radius2) {
//            u1 = acos((radius1 * radius1 + d * d - radius2 * radius2) / (2 * radius1 * d))
//            u2 = acos((radius2 * radius2 + d * d - radius1 * radius1) / (2 * radius2 * d))
//        } else {
//            u1 = 0.0
//            u2 = 0.0
//        }
//        
//        let angle1 = center1.angleBetween(point: center2)
//        let angle2 = acos((radius1 - radius2) / d)
//        let angle1a = angle1 + u1 + (angle2 - u1) * curveAngle
//        let angle1b = angle1 - u1 - (angle2 - u1) * curveAngle
//        let angle2a = angle1 + CGFloat(M_PI) - u2 - (CGFloat(M_PI) - u2 - angle2) * curveAngle
//        let angle2b = angle1 - CGFloat(M_PI) + u2 + (CGFloat(M_PI) - u2 - angle2) * curveAngle
//        
//        let p1a = center1.point(radians: angle1a, withLength: radius1)
//        let p1b = center1.point(radians: angle1b, withLength: radius1)
//        let p2a = center2.point(radians: angle2a, withLength: radius2)
//        let p2b = center2.point(radians: angle2b, withLength: radius2)
//        
//        let totalRadius = radius1 + radius2
//        var d2 = min(curveAngle * handeLenRate, p1a.minus(point: p2a).length() / totalRadius)
//        d2 *= min(1, d * 2 / totalRadius)
//        radius1 *= d2
//        radius2 *= d2
//        
//        let cp1a = p1a.point(radians: angle1a - CGFloat(M_PI_2), withLength: radius1)
//        let cp2a = p2a.point(radians: angle2a + CGFloat(M_PI_2), withLength: radius2)
//        let cp2b = p2b.point(radians: angle2b - CGFloat(M_PI_2), withLength: radius2)
//        let cp1b = p1b.point(radians: angle1b + CGFloat(M_PI_2), withLength: radius1)
//        
//        let pathJoinedCircles = UIBezierPath()
//        pathJoinedCircles.move(to: p1a)
//        pathJoinedCircles.addCurve(to: p2a, controlPoint1: cp1a, controlPoint2: cp2a)
//        pathJoinedCircles.addLine(to: p2b)
//        pathJoinedCircles.addCurve(to: p1b, controlPoint1: cp2b, controlPoint2: cp1b)
//        pathJoinedCircles.addLine(to: p1a)
//        pathJoinedCircles.close()
//        transitionLayer = _renderPath(path: pathJoinedCircles)
//        view.layer.addSubLayer(transitionLayer)
//    }
//    
//    func constructLayer(_ path: UIBezierPath) -> CALayer {
//        let pathBounds = path.cgPath.boundingBox;
//        
//        let shape = CAShapeLayer()
//        shape.fillColor = self.color.cgColor
//        shape.path = path.cgPath
//        shape.frame = CGRect(x: 0, y: 0, width: pathBounds.width, height: pathBounds.height)
//        
//        return shape
//    }
}
