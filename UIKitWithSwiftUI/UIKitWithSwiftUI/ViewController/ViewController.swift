//
//  ViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Aitor Iglesias Pubill on 11/12/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Home"
    }


    @IBAction func openViewController(_ sender: Any) {
        let swiftUIVC = UIHostingController(rootView: SwiftUIView())
        self.navigationController?.pushViewController(swiftUIVC, animated: true)
    }
    
    @IBAction func openTableViewController(_ sender: Any) {
        let vc = TableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

