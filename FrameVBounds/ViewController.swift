//
//  ViewController.swift
//  FrameVBounds
//
//  Created by Darren Leak on 2020/01/18.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.orangeView.transform = CGAffineTransform(rotationAngle: 5)
        
        let testView = UIView(frame: CGRect(x: self.orangeView.frame.origin.x,
                                            y: self.orangeView.frame.origin.y,
                                            width: self.orangeView.frame.size.width,
                                            height: self.orangeView.frame.size.height))
        testView.layer.borderColor = UIColor.red.cgColor
        testView.layer.borderWidth = 2
        self.view.addSubview(testView)
        
        self.printAll()
        
        
        // Do any additional setup after loading the view.
    }
    
    private func printAll() {
        print("=========================")
        print("X : ", self.orangeView.frame.origin.x)
        print("Y : ", self.orangeView.frame.origin.y)
        print("width : ", self.orangeView.frame.size.width)
        print("height : ", self.orangeView.frame.size.height)
        print("=========================")
        print("X : ", self.orangeView.bounds.origin.x)
        print("Y : ", self.orangeView.bounds.origin.y)
        print("width : ", self.orangeView.bounds.size.width)
        print("height : ", self.orangeView.bounds.size.height)
        print("=========================")
    }
}

