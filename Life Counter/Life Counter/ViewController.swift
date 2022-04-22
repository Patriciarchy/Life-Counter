//
//  ViewController.swift
//  Life Counter
//
//  Created by Patricia Ma on 4/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var player1PlusOne: UIButton!
    @IBOutlet weak var player1MinusOne: UIButton!
    @IBOutlet weak var player1PlusFive: UIButton!
    @IBOutlet weak var player1MinusFive: UIButton!
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    

    @IBOutlet weak var gameOverLabel: UILabel!
    
    var player1Score = 20
    var player2Score = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        player1Label.text = "Player 1: \(player1Score)"
        player2Label.text = "Player 2: \(player2Score)"
        
    }

    @IBAction func player1PlusOne(_ sender: Any) {
        player1Score += 1
        player1Label.text = "Player 1:\(player1Score)"
    }
    
    @IBAction func player1MinusOne(_ sender: Any) {
        player1Score -= 1
        player1Label.text = "Player 1:\(player1Score)"
        
        if (player1Score <= 0) {
            gameOverLabel.text = "Player 1 Loses!"
        }
    }
    
    @IBAction func player1PlusFive(_ sender: Any) {
        player1Score += 5
        player1Label.text = "Player 1:\(player1Score)"
    }
    
    @IBAction func player1MinusFive(_ sender: Any) {
        player1Score -= 5
        player1Label.text = "Player 1:\(player1Score)"
        
        if (player1Score <= 0) {
            gameOverLabel.text = "Player 1 Loses!"
        }
    }
    
    
    @IBAction func player2PlusOne(_ sender: Any) {
        player2Score += 1
        player2Label.text = "Player 2:\(player2Score)"
    }
    
    
    @IBAction func player2MinusOne(_ sender: Any) {
        player2Score -= 1
        player2Label.text = "Player 2:\(player2Score)"
        
        if (player2Score <= 0) {
            gameOverLabel.text = "Player 2 Loses!"
        }
    }
    
    
    @IBAction func player2PlusFive(_ sender: Any) {
        player2Score += 5
        player2Label.text = "Player 2:\(player2Score)"
    }
    
    
    @IBAction func player2MinusFive(_ sender: Any) {
        player2Score -= 5
        player2Label.text = "Player 2:\(player2Score)"
        
        if (player2Score <= 0) {
            gameOverLabel.text = "Player 2 Loses!"
        }
    }
}

