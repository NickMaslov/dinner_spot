//
//  ReviewViewController.swift
//  DinnerSpot
//
//  Created by Mykola Maslov on 9/3/21.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!

    var restaurant = Restaurant()
    
    @IBOutlet var closeButton: UIButton!
    @IBOutlet var rateButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        //closeButton animations
        let moveSlideInFromTop = CGAffineTransform.init(translationX: 0, y: -60)
        closeButton.alpha = 0
        closeButton.transform = moveSlideInFromTop
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        var delay = 0.1
        for i in 0..<5 {
            UIView.animate(withDuration: 0.4, delay: delay, options: [], animations: {
                self.rateButtons[i].alpha = 1.0
                self.rateButtons[i].transform = .identity
            }, completion: nil)
            delay += 0.05
        }
        
        UIView.animate(withDuration: 0.4) {
            self.closeButton.alpha = 1.0
            self.closeButton.transform = .identity
        }
    }
    
}
