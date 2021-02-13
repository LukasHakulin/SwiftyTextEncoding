//
//  ViewController.swift
//  SwiftyTextEncoding
//
//  Created by Lukas Hakulin on 02/07/2021.
//  Copyright (c) 2021 Lukas Hakulin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let viewLayout = ViewLayout()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewInteractions()
        viewLayout.refresh()
    }

    override func loadView() {
        self.view = viewLayout
    }
}

extension ViewController {

    private func setupViewInteractions() {
        viewLayout.tabBar.addTarget(self, action: #selector(tabSelected), for: .valueChanged)
        viewLayout.textInput.addTarget(self, action: #selector(textInputDidChange), for: .editingChanged)
    }

    private func clearAllData() {
        viewLayout.textInput.text = ""
        viewLayout.textOutput.text = ""
    }
}

extension ViewController {

    @objc private func tabSelected() {
        clearAllData()
    }

    @objc private func textInputDidChange() {
        viewLayout.refresh()
    }
}
