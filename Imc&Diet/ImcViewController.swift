//
//  ImcViewController.swift
//  Imc&Diet
//
//  Created by Admin on 11/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ImcViewController: UIViewController {
    
    var size:Float = 0.0
    var weight:Float = 0.0
    var age = 0
    var resultImc:Float = 0.0

    
 
    @IBOutlet weak var weightLabel: UITextField!
    @IBOutlet weak var sizeLabel: UITextField!
    @IBOutlet weak var ageLabel: UITextField!
    @IBOutlet weak var choose: UISegmentedControl!
    
    
    @IBOutlet weak var bnt: UIButton!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bnt?.layer.cornerRadius=25
        bnt?.clipsToBounds=true

     
    }
    

    @IBAction func imcButtom() {
        
        size = Float(sizeLabel.text!)!
        weight = Float(weightLabel.text!)!
        age = Int(ageLabel.text!)!
        

        var carreSize: Float = 0.0
        var  resultCm:Float  = 0.0
        

        
        resultCm = size  / 100
        
        carreSize = resultCm * resultCm
        
        resultImc = weight / carreSize
        
    }
        
        
   
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "directionResult",
                let destination = segue.destination as? ResultImcViewController
            {
                destination.imc = resultImc
            }
            
        }
    
}

