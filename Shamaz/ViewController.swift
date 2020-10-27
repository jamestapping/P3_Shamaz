//
//  ViewController.swift
//  Shamaz
//
//  Created by James Tapping on 20/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var promptbrain = PromptBrain()
    
    
    //MARK: - Button actions
    
    
    @IBOutlet weak var promptLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapPastButton(_ sender: Any) {
        
        promptLabel.text = promptbrain.getPastPrompt()
        
    }
    
    
    @IBAction func didTapFutureButton(_ sender: Any) {
        
        promptLabel.text = promptbrain.getFuturePrompt()

    }
    

    @IBAction func didTapNextPlayer(_ sender: Any) {
        
        let nextPlayerNo = String(Int.random(in: 1...10))
        
        promptLabel.text = "Next storyteller no: \(nextPlayerNo)"
        
        
    }
    

}


