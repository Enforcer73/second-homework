//
//  ViewController.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 27.10.2021.
//

import UIKit

class ViewController: UIViewController, ViewControllerSutulDelegat, ViewControllerMimiDelegat, ViewControllerDogEndDelegat {
    
    
    
    @IBOutlet private weak var label: UILabel!
    
    
    func textSutul(text: String) {
        label.text = "Сутулый передал привет... \(text)"
    }
      
    func textMimi(text: String) {
        label.text = "Не бойся... \(text)"
    }
    
    func textEndDog(text: String) {
        label.text = "Какие планы?  \(text)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSutulVC" {
            if let destVc = segue.destination as? ViewControllerSutul {
                destVc.text = "Хммм...меня терзнают смутные сомнения. Не хочешь сделать обдуманный выбор?"
                destVc.delegate = self
            }
        }
        
        if segue.identifier == "goMimiVC"  {
            if let destVc = segue.destination as? ViewControllerMimi {
                    destVc.text = "Хороооош! Пошёл мими путём)"
                    destVc.delegate = self
            }
        }
    }
}

