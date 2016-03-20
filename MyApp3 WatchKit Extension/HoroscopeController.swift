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
    @IBOutlet weak var btnHoroscopeHandle: WKInterfaceButton!
    @IBOutlet weak var USCThemeSwitchHandle: WKInterfaceSwitch!
    @IBAction func btnHoroscope() {
        let fortunes = ["Don't look behind you.",
            "You will have great wealth.",
            "You'll have great time at USC.",
            "The future looks good.",
            "You will have an amazing day.",
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
    @IBAction func USCThemeSwitch(value: Bool) {
        if value {
            self.lbHoroscope.setTextColor(UIColor(red: 0.996, green: 0.796, blue: 0.1843, alpha: 1.0))
            self.btnHoroscopeHandle.setBackgroundColor(UIColor(red: 0.588235, green: 0.070588, blue: 0.06667, alpha: 1.0))
            self.USCThemeSwitchHandle.setColor(UIColor(red: 0.996, green: 0.796, blue: 0.1843, alpha: 1.0))
            
        }
        else {
            self.lbHoroscope.setTextColor(UIColor.whiteColor())
            self.btnHoroscopeHandle.setBackgroundColor(UIColor(red: 0.8745, green: 0.615686, blue: 0.13333, alpha: 1.0))
            self.USCThemeSwitchHandle.setColor(UIColor.whiteColor())
        }
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
