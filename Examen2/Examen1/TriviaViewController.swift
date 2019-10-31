//
//  TriviaViewController.swift
//  Examen2
//
//  Created by Diego Mora on 10/17/19.
//  Copyright © 2019 unam. All rights reserved.
//
import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var question1: UISwitch!
    @IBOutlet weak var question2: UISwitch!
    @IBOutlet weak var question3: UISwitch!
    @IBOutlet weak var question4: UISwitch!
    @IBOutlet weak var question5: UISwitch!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func revisarRespuestas() -> Bool {
        if !question1.isOn && question2.isOn && question3.isOn && question4.isOn && !question5.isOn {
            return true
        } else {
            return false
        }
    }
    
    

   
    @IBAction func botonTrivia(_ sender: Any) {
        
        if revisarRespuestas(){
            let alert = UIAlertController(title: "Trivia Correcta", message: "Ganaste un Código de Descuento: DragonsRule", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true)
        }else{
            let alert = UIAlertController(title: "Trivia Incorrecta", message: "¿Te haces llamar un verdadero fan?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        
    }
    

    

}
