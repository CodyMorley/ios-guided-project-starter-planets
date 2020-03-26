//
//  SettingsViewController.swift
//  Planets
//
//  Created by Bling Morley on 3/26/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
        // Do any additional setup after loading the view.
    }

    func updateViews() {
        // Get the value of pluto's book from user defaults.
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        shouldShowPlutoSwitch.isOn = shouldShowPluto
    }
    
    
    @IBAction func changeShouldShowPluto(_ sender: Any) {
        
        // Set whether pluto should be a planet or not in UserDefaults
        UserDefaults.standard.set(shouldShowPlutoSwitch.isOn, forKey: .shouldShowPlutoKey)
        
    }
    
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
