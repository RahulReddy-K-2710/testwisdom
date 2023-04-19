//
//  AlertViewController.swift
//  Wisdomleaf
//
//  Created by Rahul on 19/04/23.
//

import UIKit

class AlertViewController: UIViewController {
    
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var decpLabel: UILabel!
    public var decpText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        decpLabel.text = decpText
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        animateView()
    }
    
    public static func create() -> AlertViewController? {
        if let controller = UIStoryboard(name:  "Main", bundle: nil).instantiateViewController(withIdentifier: "AlertViewController") as? AlertViewController {
            return controller
        }
        return nil
    }
    
    private func animateView() {
        alertView.alpha = 0
        alertView.layer.cornerRadius = 8
        self.alertView.frame.origin.y = self.alertView.frame.origin.y + 50
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.alertView.alpha = 1.0
            self.alertView.frame.origin.y = self.alertView.frame.origin.y - 50
        })
    }
        
    @IBAction func didTapOnAcceptButton() {
        self.dismiss(animated: true, completion: nil)
    }

}
