//
//  HoroscopeController.swift
//  MyApp3
//
//  Created by Tushal Desai on 8/24/15.
//  Copyright (c) 2015 Tushal Desai. All rights reserved.
//

import WatchKit
import Foundation


class HoroscopeController: WKInterfaceController {
    
    @IBOutlet weak var lbHoroscope: WKInterfaceLabel!
    @IBAction func btnHoroscope() {
        let fortunes = ["Don't look behind you.",
            "You will have great wealth.",
            "You'll have great time at USC.",
            "The future looks good.",
            "Do you know what time it is?",
            "An alien will visit soon."]
        func generateFortune() -> String {
            let numFortunes = UInt32(fortunes.count)
            let index = Int(arc4random_uniform(numFortunes))
            return fortunes[index]
        }
        //reply contains the fortune:
        let fortune = generateFortune()
        self.lbHoroscope.setText(fortune)
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
