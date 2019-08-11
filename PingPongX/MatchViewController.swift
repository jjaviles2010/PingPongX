//
//  MatchViewController.swift
//  PingPongX
//
//  Created by Jose Javier on 08/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var lbPlayer1: UILabel!
    
    @IBOutlet weak var lbPlayer2: UILabel!
    
    @IBOutlet weak var tfScorePlayer1: UITextField!
    
    @IBOutlet weak var tfScorePlayer2: UITextField!
    
    @IBOutlet weak var btScorePlayer1: UIButton!
    
    @IBOutlet weak var btScorePlayer2: UIButton!
    
    @IBOutlet weak var tvMatches: UITextView!
    
    // MARK: - Properties
    var player1: String = ""
    var player2: String = ""

    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        lbPlayer1.text = player1
        lbPlayer2.text = player2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 2: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela 2: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 2: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 2: viewDidDisappear")
    }
    
    // MARK: - Actions
    @IBAction func addScore(_ sender: UIButton) {
        
        let textField = sender == btScorePlayer1 ? tfScorePlayer1 : tfScorePlayer2
        
        var score = Int(textField!.text!) ?? 0
        textField?.text = "\(score + 1)"
    }
    
    @IBAction func registerMatch(_ sender: UIButton) {
        tvMatches.text += "\(player1) (\(tfScorePlayer1.text!)) x (\(tfScorePlayer2.text!)) \(player2)\n"
        tfScorePlayer1.text = "0"
        tfScorePlayer2.text = "0"
    }
    
}
