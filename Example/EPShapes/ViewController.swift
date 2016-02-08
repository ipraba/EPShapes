//
//  ViewController.swift
//  EPShapes
//
//  Created by Prabaharan on 01/25/2016.
//  Copyright (c) 2016 Prabaharan. All rights reserved.
//

import UIKit
import EPShapes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let shape = HeartView(frame: CGRectMake(0,0,100,100))
        shape.config()
            
        view.addSubview(shape)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

