//
//  ViewController.swift
//  SampleMeterGraph
//
//  Created by 矢野史洋 on 2016/05/14.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var graphView:MeterPieGraphView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":5,"color":UIColor.redColor()])
        params.append(["value":5,"color":UIColor.blueColor()])
        let width = self.view.frame.width
        graphView = MeterPieGraphView(frame: CGRectMake(0, 30, width, 320), params: params)
        self.view.addSubview(graphView)
        //        graphView.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}