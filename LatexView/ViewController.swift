//
//  ViewController.swift
//  LatexView
//
//  Created by Shunji Li  on 8/4/15.
//  Copyright © 2015 Shunji Li . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var latexView: SJLatexView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        latexView.layer.borderColor = UIColor.grayColor().CGColor
        latexView.layer.borderWidth = 2.0
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let latexString = "When $a \\ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are$$x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}.$$"
        latexView.loadLatexString(latexString)
    }
}

