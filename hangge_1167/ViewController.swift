//
//  ViewController.swift
//  hangge_1167
//
//  Created by hangge on 16/5/5.
//  Copyright © 2016年 hangge.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    let logoView  = UIStoryboard(name: "Main", bundle: nil)
//        .instantiateViewController(withIdentifier: "logoView")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnClick(_ sender: AnyObject) {
        //从StoryBoard中获取视图控制器
      
//        //添加获取到的视图控制器的视图
//        self.view.addSubview(logoView.view)
//        logoView.view.tag = 100
//        //添加子视图控制器
//        addChild(logoView)
//        logoView.didMove(toParent: self)
        
        let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        testView.backgroundColor = .blue
        testView.alpha = 0.5
        testView.tag = 100
        testView.isUserInteractionEnabled = true
        self.view.addSubview(testView)
        
      
        
    }
    
    
    @IBAction func btnRemove(_ sender: Any) {
        print("Start remove sibview")
        if let viewWithTag = self.view.viewWithTag(100) {
            viewWithTag.removeFromSuperview()
        }else{
            print("No!")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

