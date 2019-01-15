//
//  Imc.swift
//  Imc&Diet
//
//  Created by Admin on 14/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation

class Imc{
    
    var size:Float = 0.0
    var weight:Float = 0.0
    var age = 0
    
    
    init(size1:Float, weight1:Float, age1:Int){
        size = size1
        weight = weight1
        age = age1
    }
    
    func bntActionResult(){
    
           /* size = Float(sizeLabel.text!)!
            weight = Float(weightLabel.text!)!
            age = Int(ageLabel.text!)!*/
        
        
            var carreSize: Float = 0.0
            var  resultCm:Float  = 0.0
            var resultImc:Float = 0.0
            var alert: String = ""
            var img: String = ""
        
            resultCm = size  / 100
        
            carreSize = resultCm * resultCm
        
            resultImc = weight / carreSize
        
        
            switch resultImc {
            case 16...18:
            alert = "Maigreur"
            img = "maigreur"
            case 19...25:
            alert = "Corpulence normal"
            img = "normal"
            case 26...30:
            alert = "Surpoids"
            img = "surpoid"
            case 31...35:
            alert = "Obésité modérée"
            img = "obesse"
            
            
            default:
            alert = "Veuillez consulter un médecin en toute urgence"
   }
}
