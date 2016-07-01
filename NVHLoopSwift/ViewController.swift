//
//  ViewController.swift
//  NVHLoopSwift
//
//  Created by Hùng Nguyễn  on 6/30/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtF_number: UITextField!
    
    var member = ["GrandFather","GrandMother","Father","Mother","Brother","Sister"]
    var n: Int = 6
    let marigin: CGFloat = 70
    hhhhhhhhhhh
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func action_Drawball(sender: UIButton) {
        if txtF_number.text! .isEmpty   {
            print("nill")
            
        } else {
            print("not nill")
            n = Int(txtF_number.text!)!
            drawBalls()
        }
    }
    
    
    func drawBalls() {
        for indexRow in 0..<n {
            for indexColum in 0..<n {
                if indexRow != n {
                    
                    let image = UIImage(named: "pokemonBall")
                    let ball = UIImageView(image: image)
                    ball.center = CGPointMake(marigin + CGFloat(indexRow) * spaceRowBetweenBall(),CGFloat( indexColum) * spaceColumBetweenBall() + marigin)
                    self.view.addSubview(ball)
                    
                } else {
                    
                    let image = UIImage(named: "pokemonBall")
                    let ball = UIImageView(image: image)
                    ball.center = CGPointMake(self.view.bounds.size.width -  marigin , CGFloat( indexColum) * 50 + marigin)
                    self.view.addSubview(ball)
                }

            }
            
        }
    }
    
    func spaceRowBetweenBall() -> CGFloat {
        let space  = (self.view.bounds.size.width - 2 * marigin) / CGFloat(n - 1)
        return space
    }
    
    func spaceColumBetweenBall() -> CGFloat {
        let space = (self.view.bounds.size.height - 2 * marigin) / CGFloat(n - 1)
        return space
    }

}