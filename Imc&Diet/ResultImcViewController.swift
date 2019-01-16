//
//  ResultImcViewController.swift
//  Imc&Diet
//
//  Created by Admin on 11/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit


class ResultImcViewController: UIViewController {
    
    var imc = Float()
    var choose: String = "women"
    
    @IBOutlet weak var reponseLabel: UILabel!
    @IBOutlet weak var imgReponse: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let convert:Int = Int(imc)
        
        var alert: String = ""
        var img: String = ""
        
        
        switch convert {
            case 16...18:
                alert = "Maigreur"
                
                if choose == "women"{
                   img = "MaigreurW"
                } else{
                    img = "MaigreurH"
                }
                   
            case 19...25:
                alert = "Corpulence normal"
                
                if choose == "women"{
                    img = "NormalW"
                } else{
                    img = "NormalH"
                }
                
                
            case 26...30:
                alert = "Surpoids"
                
                if choose == "women"{
                    img = "SurpoidsW"
                } else{
                    img = "SurpoidsH"
                }
                
            case 31...35:
                alert = "Obésité modérée"
                
                if choose == "women"{
                    img = "ObeseW"
                } else{
                    img = "ObeseH"
                }
                
            default:
                alert = "Veuillez consulter un médecin"
                img = "warning"
            }
        
        reponseLabel.text = alert
        imgReponse.image = UIImage(named: img)
        
      
    }

}
