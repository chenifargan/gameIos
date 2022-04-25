

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerCard: UIImageView!
    
    @IBOutlet weak var cpuCard: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var playerCpuLabel: UILabel!
    
    
    @IBOutlet weak var countOfGame: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    var count = 0
    var playerScore = 0
    var cpuScore = 0
    let SCORES = [5, 10, 20, 30, 50, 30,40,50,20,5,4,7,9,2,5,10,35,6,8,19]
   


    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func spinClicked(_ sender: Any) {
        if(count<15){
        let playerNumber = arc4random_uniform(20)
        let cpuNumber = arc4random_uniform(20)

         //set the image views
         playerCard.image = UIImage(named: "card" + String(playerNumber))
         
         cpuCard.image = UIImage(named: "card" + String(cpuNumber))
         // update the score
         playerScore += SCORES[Int(playerNumber)]
         cpuScore += SCORES[Int(cpuNumber)]
         playerScoreLabel.text = String(playerScore)
         playerCpuLabel.text = String(cpuScore)
        count+=1
            countOfGame.text = "\(count)/15"
        
    }
        else{
            if(playerScore>cpuScore){
                winner.text = "Winner Chen"
                
            }
        else{
            winner.text = "Winner CPU"
        }
        
    }

    
    
}
}
