//
//  ViewController.swift
//  CustomLoader
//
//  Created by SHUBHAM AGARWAL on 29/04/18.
//  Copyright © 2018 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // OverRight the defailt alpha value.
    //    CustomLoader.instance.setAlpha = 0.5
        
        // Overight the default gif image.
   //     CustomLoader.instance.gifName = "demo"
        
        //Overright the defalut black color
     //   CustomLoader.instance.viewColor = UIColor.blue
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn(_ sender: Any) {
        CustomLoader.instance.showLoaderView()
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(callme), userInfo: nil, repeats: false)
    }
    
    @objc func callme() {
        timer.invalidate()
        CustomLoader.instance.hideLoaderView()
    }

}

