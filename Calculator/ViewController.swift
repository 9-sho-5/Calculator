//
//  ViewController.swift
//  Calculator
//
//  Created by Kusunose Hosho on 2020/04/30.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!   // 計算結果を表示するラベル
    
    var number: Int = 0
    var setnumber: Int = 0
    var count: Int = 0
    var sum: Int = 0
    var ope: Int = 0  // どの四則演算をするか判定するための変数
    
    @IBAction func select0() {
        number = number*10
        label.text = String(number)
    }
    
    @IBAction func select1() {
        number = number*10 + 1
        label.text = String(number)
    }
    
    @IBAction func select2() {
        number = number*10 + 2
        label.text = String(number)
    }
    
    @IBAction func select3() {
        number = number*10 + 3
        label.text = String(number)
    }
    
    @IBAction func select4() {
        number = number*10 + 4
        label.text = String(number)
    }
    
    @IBAction func select5() {
        number = number*10 + 5
        label.text = String(number)
    }
    
    @IBAction func select6() {
        number = number*10 + 6
        label.text = String(number)
    }
    
    @IBAction func select7() {
        number = number*10 + 7
        label.text = String(number)
    }
    
    @IBAction func select8() {
        number = number*10 + 8
        label.text = String(number)
    }
    
    @IBAction func select9() {
        number = number*10 + 9
        label.text = String(number)
    }
    
    func calculate_processing (){
        if ope == 1 {
            setnumber = setnumber + number
        } else if ope == 2 {
            setnumber = setnumber - number
        } else if ope == 3 {
            setnumber = setnumber * number
        } else if ope == 4 {
            setnumber = setnumber / number
        }
    }
    
    @IBAction func add() {
        
        if count == 0 {
            setnumber = number
            count = count + 1
            label.text = String(setnumber)
            number = 0
            ope = 1
        } else if count == 1 {
            
            calculate_processing()
            
            label.text = String(setnumber)
            number = 0
            ope = 1
        }
    }
    
    @IBAction func subtract() {
        if count == 0 {
            setnumber = number
            count = count + 1
            label.text = String(setnumber)
            number = 0
            ope = 2
        } else if count == 1 {
            
            calculate_processing()
            
            label.text = String(setnumber)
            number = 0
            ope = 2
        }
    }
    
    @IBAction func multiple() {
        if count == 0 {
            setnumber = number
            count = count + 1
            label.text = String(setnumber)
            number = 0
            ope = 3
        } else if count == 1 {
            
            calculate_processing()
            
            label.text = String(setnumber)
            number = 0
            ope = 3
        }
    }
    
    @IBAction func divide() {
        if count == 0 {
            setnumber = number
            count = count + 1
            label.text = String(setnumber)
            number = 0
            ope = 4
        } else if count == 1 {
            
            calculate_processing()
            
            number = 0
            ope = 4
        }
    }
    
    @IBAction func total() {
        
        if ope == 1 {
            //addの時
            sum = setnumber + number
        } else if ope == 2 {
            //subtractの時
            sum = setnumber - number
        } else if ope == 3 {
            //multipleの時
             sum = setnumber * number
        } else if ope == 4 {
            //divideの時
            sum = setnumber /  number
        }
        
        label.text = String(sum)
    }
    
    @IBAction func clear() {
        number = 0
        setnumber = 0
        sum = 0
        count = 0
        
        label.text = String(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

