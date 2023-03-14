//
//  ViewController.swift
//  SimpleDiceGame
//
//  Created by 이수민 on 2023/03/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    func getRandomImage() -> UIImage {
        return diceArray.randomElement()!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImageView.image = diceArray[0]
        secondImageView.image = diceArray[0]
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        firstImageView.image = getRandomImage()
        secondImageView.image = getRandomImage()
    }
    
}

