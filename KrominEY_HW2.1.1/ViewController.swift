//
//  ViewController.swift
//  KrominEY_HW2.1.1
//
//  Created by Егор Кромин on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        changeLightButton.layer.cornerRadius = 15
       
    }
    @IBAction func changeLightButtonPressed() {
        
        if redLight.alpha == 1 {
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            
        }else if yellowLight.alpha == 1{
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
                    
        }else if greenLight.alpha == 1{
            greenLight.alpha = 0.5
            redLight.alpha = 1
        }else {
            redLight.alpha = 1
            changeLightButton.setTitle("NEXT", for: .normal)
        }
        
      
    }
    
}

