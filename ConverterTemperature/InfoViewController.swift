//
//  InfoViewController.swift
//  ConverterTemperature
//
//  Created by sindija.dzintare on 28/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    
    var infoText = "Temperature converter shows you the temperature in both units of measurement - Celsius and Fahrenheit."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("Dismiss VC")
    }
    
   

}
