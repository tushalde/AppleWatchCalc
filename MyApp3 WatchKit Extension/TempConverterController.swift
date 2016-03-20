//
//  TempConverterController.swift
//  MyApp3
//
//  Created by Tushal Desai on 8/24/15.
//  Copyright (c) 2015 Tushal Desai. All rights reserved.
//

import WatchKit
import Foundation


class TempConverterController: WKInterfaceController {
    
    @IBOutlet weak var lbFahrenheit: WKInterfaceLabel!
    @IBOutlet weak var lbCelsius: WKInterfaceLabel!
    @IBAction func tempConvSlider(value: Int) {
        lbFahrenheit.setText("\(value)°F")
        let fah2cel = (value - 32) * 5 / 9
        lbCelsius.setText("\(fah2cel)°C")
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
