//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Marc Haumann on 2/28/16.
//  Copyright © 2016 Marc Haumann. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var dialog: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dialog.frame.origin.y = 568
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.9, options: [], animations: { () -> Void in
            self.dialog.frame.origin.y = 204
            }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelDidTap(sender: AnyObject) {
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
