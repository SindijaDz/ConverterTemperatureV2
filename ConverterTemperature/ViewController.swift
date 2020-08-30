//
//  ViewController.swift
//  ConverterTemperature
//
//  Created by sindija.dzintare on 28/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 99
            tempSlider.value = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.text = "32º F"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("value: ", Int(sender.value))
        let tempCelsius = Int(sender.value)
        celsiusLabel.text = "\(tempCelsius)º C"
        let tempFahr = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(tempFahr)º F"
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoSegue"{
    // Get the new view controller using segue.destination.
            let vc = segue.destination as! InfoViewController
    // Pass the selected object to the new view controller.
            vc.infoText = "Temperature converter shows you the temperature in both units of measurement - Celsius and Fahrenheit."
        }
    }
}
