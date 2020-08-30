//
//  DarkModeViewController.swift
//  ConverterTemperature
//
//  Created by sindija.dzintare on 28/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class DarkModeViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]){
                (success) in
                print(success)
            }
        }
    }
    
    func setLabelText() {
        var text = "Unable to specify User UI style"
        
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode ON. Go to the settings to change the appearance."
        }else{
            text = "Light Mode ON. Go to the settings to change the appearance."
        }
        textLabel.text = text
    }
} //end of class

extension DarkModeViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
    
    func warningPopup(wothTitle title: String, withMessage message: String) {
        DispatchQueue.main.async {
            let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            popUp.addAction(okButton)
            
            self.present(popUp, animated: true, completion: nil)
            
        }
    }
}
