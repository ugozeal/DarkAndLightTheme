//
//  ViewController.swift
//  DarkModeExample
//
//  Created by David U. Okonkwo on 10/26/20.
//

import UIKit

class ViewController: UIViewController {
    let myColor = UIColor(named: "myColor")

    lazy var myView: UIView = {
        let view = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 100))
        view.backgroundColor = myColor
        return view
    }()

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.text = "Hello World"
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        myView.addSubview(myLabel)
        myLabel.frame = myView.bounds
        view.addSubview(myView)
        view.backgroundColor = .systemBackground
    }
}
