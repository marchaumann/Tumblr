//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Marc Haumann on 2/28/16.
//  Copyright © 2016 Marc Haumann. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var btnText: UIButton!
    @IBOutlet weak var btnPhoto: UIButton!
    @IBOutlet weak var btnQuote: UIButton!
    @IBOutlet weak var btnLink: UIButton!
    @IBOutlet weak var btnChat: UIButton!
    @IBOutlet weak var btnVideo: UIButton!
    var buttons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        buttons = [btnText, btnPhoto, btnQuote, btnLink, btnChat, btnVideo]
        for button in buttons {
            button.frame.origin.y = 568
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        for (index, button) in self.buttons.enumerate() {
            if index < 3 {
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.9, options: [], animations: { () -> Void in
                        button.frame.origin.y = 111
                    }, completion: nil)
            } else {
                UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.9, options: [], animations: { () -> Void in
                        button.frame.origin.y = 239
                    }, completion: nil)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissDidTap(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
