//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by JDLR on 13/09/2018.
//  Copyright © 2018 RCarter. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    enum Style {
        case correct, incorrect, standard
    }
    
    private func setStyle(_ style: Style) {
        switch style {
            case .correct:
                backgroundColor = UIColor(red: 200.0/255.0, green: 235.0/255.0, blue: 160.0/255.0, alpha: 1)
                icon.image = #imageLiteral(resourceName: "Icon Correct")
                icon.isHidden = false
            case .incorrect:
                backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1)
                icon.image = #imageLiteral(resourceName: "Icon Error")
                icon.isHidden = false
            case .standard:
                backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1)
                icon.isHidden = true
        }
    }
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    var title: String = "" {
        didSet {
            label.text = title
        }
    }
    var style: Style = .correct {
        didSet {
            setStyle(style)
        }
    }
}
