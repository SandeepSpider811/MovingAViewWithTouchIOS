//
//  ViewController.swift
//  AnimationPlusGestureSample
//
//  Created by Sierra 4 on 10/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewOutlet: UIView!
    
    var location = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches ){
            location = touch.location(in: self.view)
            if viewOutlet.frame.contains(location){
                viewOutlet.center = location
                viewOutlet.layer.cornerRadius = viewOutlet.frame.height / 2
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches ){
            location = touch.location(in: self.view)
            if viewOutlet.frame.contains(location){
                viewOutlet.center = location
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        viewOutlet.layer.cornerRadius = 0
    }

}

