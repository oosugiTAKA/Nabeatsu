//
//  ViewController.swift
//  nabeatsu
//
//  Created by ohtatomotaka on 2015/03/11.
//  Copyright (c) 2015年 ohtatomotaka. All rights reserved.
//

import UIKit
//TODO:コーディング規約を確認

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label:UILabel!
    @IBOutlet var faceLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(0)"
    }
    func isAho() ->Bool{
        //問題1
        if number%3==0{
            return true
        }
        
        //問題2
        if number%10==3{
            return true
        }
        
        //問題3
        if number/10%10==3{
            return true
        }
        //問題4 問題4をやるときは問題3の答えをコメントアウトしてから書こう
        var check:Int
        check=number
       while (check != 0){
            if check%10==3{
                return true
            }else{
                check=check/10
            }
        }
        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        label.text = "\(number)"
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func clear(){
        number=0
    }
}

