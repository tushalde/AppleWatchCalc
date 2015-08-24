//
//  CalculatorController.swift
//  MyApp3
//
//  Created by Tushal Desai on 8/23/15.
//  Copyright (c) 2015 Tushal Desai. All rights reserved.
//

import WatchKit
import Foundation


class CalculatorController: WKInterfaceController {
    
    var operand1:Double!
    var operand2:Double!
    var operation = 0
    var result = ""
    var enteringSecondNumber = false
    var btnEqualsPressedOnce = false
    
    @IBOutlet weak var lbResult: WKInterfaceLabel!
    @IBOutlet weak var lbSign: WKInterfaceLabel!
    @IBAction func btn0() {
        updateResultLabel("0")
    }
    @IBAction func btn1() {
        updateResultLabel("1")
    }
    @IBAction func btn2() {
        updateResultLabel("2")
    }
    @IBAction func btn3() {
        updateResultLabel("3")
    }
    @IBAction func btn4() {
        updateResultLabel("4")
    }
    @IBAction func btn5() {
        updateResultLabel("5")
    }
    @IBAction func btn6() {
        updateResultLabel("6")
    }
    @IBAction func btn7() {
        updateResultLabel("7")
    }
    @IBAction func btn8() {
        updateResultLabel("8")
    }
    @IBAction func btn9() {
        updateResultLabel("9")
    }
    @IBAction func btnPeriod() {
        updateResultLabel(".")
    }
    @IBAction func btnAdd() {
        operation = 1
        prepareForSecondNumber()
        lbSign.setText("+")
    }
    @IBAction func btnSubtract() {
        operation = 2
        prepareForSecondNumber()
        lbSign.setText("-")
    }
    @IBAction func btnMultiply() {
        operation = 3
        prepareForSecondNumber()
        lbSign.setText("*")
    }
    @IBAction func btnDivide() {
        operation = 4
        prepareForSecondNumber()
        lbSign.setText("/")
    }
    @IBAction func btnClear() {
        result = ""
        operand1 = nil
        operand2 = nil
        operation = 0
        lbResult.setText("0")
        enteringSecondNumber = false
        lbSign.setText("")
        btnEqualsPressedOnce = false
    }
    @IBAction func btnEquals() {
        if btnEqualsPressedOnce {
            return
        }
        else {
            operand2 = (result as NSString).doubleValue
            if operation == 0 {
                return
            }
            else {
                var answer:Double = 0.0
                switch operation {
                case 1:
                    answer = operand1 + operand2
                    break
                case 2:
                    answer = operand1 - operand2
                    break
                case 3:
                    answer = operand1 * operand2
                    break
                case 4:
                    answer = operand1 / operand2
                    break
                default:
                    println("Error")
                }
                result = "\(answer)"
                lbResult.setText(result)
                operand1 = nil
                operation = 0
                enteringSecondNumber = false
                lbSign.setText("")
                btnEqualsPressedOnce = true
            }
            
        }
    }
    
    func updateResultLabel(EnteredNumber: String) {
        if enteringSecondNumber {
            result = EnteredNumber
            enteringSecondNumber = false
            lbSign.setText("")
        }
        else {
            if EnteredNumber == "." {
                if result.rangeOfString(".") != nil {
                    return
                }
            }
            result += EnteredNumber
        }
        lbResult.setText(result)
    }
    
    func prepareForSecondNumber() {
        operand1 = (result as NSString).doubleValue
        enteringSecondNumber = true
        btnEqualsPressedOnce = false
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
