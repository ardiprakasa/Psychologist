//
//  TextUIViewController.swift
//  Psychologist
//
//  Created by Hardian Prakasa on 5/18/16.
//  Copyright © 2016 Ice House Corp. All rights reserved.
//

import UIKit

class TextUIViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text
        }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
    
    override var preferredContentSize: CGSize {
        get {
            if textView != nil && presentingViewController != nil {
                return textView.sizeThatFits(presentingViewController!.view.bounds.size)
            } else {
                return super.preferredContentSize
            }
        }
        set {
            super.preferredContentSize = newValue
        }
    }

}
