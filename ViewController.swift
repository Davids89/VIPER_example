//
//  ViewController.swift
//  VIPER
//
//  Created by signlab on 12/7/17.
//  Copyright © 2017 david. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var lastname: UITextField!
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func add(sender: Any){
        presenter?.addNewObjectsWithData(name: self.name.text!, lastname: self.lastname.text!)
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(sender: Any){
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
