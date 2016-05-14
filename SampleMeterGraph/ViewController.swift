//
//  ViewController.swift
//  SampleMeterGraph
//
//  Created by 矢野史洋 on 2016/05/14.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var redValueTextField: UITextField!
    @IBOutlet weak var blueValueTextField: UITextField!
    @IBOutlet weak var changeValueButton: UIButton!
    var redValue:Int?
    var blueValue:Int?
    
    var graphView:MeterPieGraphView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValueTextField.delegate = self
        blueValueTextField.delegate = self
        
        var params = [Dictionary<String,AnyObject>]()
        params.append(["value":3,"color":UIColor.redColor()])
        params.append(["value":7,"color":UIColor.blueColor()])
//        let width = self.view.frame.width
        let myBoundSize: CGSize = UIScreen.mainScreen().bounds.size
        let width = myBoundSize.width
        graphView = MeterPieGraphView(frame: CGRectMake(0, 30, width, 150), params: params)
        self.view.addSubview(graphView)
        //        graphView.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField){
        print("textFieldDidBeginEditing:" + textField.text!)
    }
    
    /*
    UITextFieldが編集終了する直前に呼ばれるデリゲートメソッド.
    */
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing:" + textField.text!)
        
        if((redValueTextField.text) != nil) {
          redValue = Int(redValueTextField.text!)
          print("this is redValue:",redValue)
        }
        if((blueValueTextField.text) != nil) {
          blueValue = Int(blueValueTextField.text!)
          print("this is blueValue:",blueValue)
        }
        return true
    }
    
    /*
    改行ボタンが押された際に呼ばれるデリゲートメソッド.
    */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}