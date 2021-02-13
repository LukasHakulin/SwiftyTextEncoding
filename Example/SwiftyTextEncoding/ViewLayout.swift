//
//  swift
//  SwiftyTextEncoding_Example
//
//  Created by Lukas Hakulin on 13/02/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import SwiftyTextEncoding

final class ViewLayout: UIView {

    private var selectedType: CodingType? = .base16

    private enum CodingType: Int {
        case base16, base32, hexBase32, zBase32, wordSafeBase32
    }
    private enum CodinMode: Int {
        case encoding, decoding
    }

    private let types: [String] = ["base16", "base32", "Hex base32", "Z - base32", "Word Safe base32"]

    private let stackView = UIStackView()
    private let inputLabel = UILabel()
    private let typePicker = UIPickerView()
    private let outputLabel = UILabel()

    let tabBar = UISegmentedControl(items: ["Encoding", "Decoding"])
    let textInput = UITextField()
    let textOutput = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        addSubviews()
        setupViews()
        setupConstraints()
    }

    private func addSubviews() {
        addSubview(stackView)
        [tabBar, inputLabel, textInput, typePicker, outputLabel, textOutput].forEach(stackView.addArrangedSubview)
    }

    private func setupViews() {
        backgroundColor = .white

        stackView.axis = .vertical
        stackView.spacing = 12.0
        stackView.distribution = .fill
        stackView.alignment = .fill

        tabBar.selectedSegmentIndex = 0

        inputLabel.text = "Input:"

        textInput.layer.borderWidth = 1.0
        textInput.layer.borderColor = UIColor.gray.cgColor
        textInput.placeholder = "Input text"
        textInput.text = "foobar"

        typePicker.dataSource = self
        typePicker.delegate = self

        outputLabel.text = "Output:"

        textOutput.numberOfLines = 0
    }

    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 64.0),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0),
            self.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16.0)
        ])
    }
}

extension ViewLayout: UIPickerViewDelegate {

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return types[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedType = CodingType(rawValue: row)
        refresh()
    }
}

extension ViewLayout: UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
}

extension ViewLayout {

    func refresh() {
        guard let mode = CodinMode(rawValue: tabBar.selectedSegmentIndex) else { return }
        switch mode {
        case .encoding: encode()
        case .decoding: decode()
        }
    }

    private func encode() {
        guard
            let inputText = textInput.text,
            let selectedType = selectedType
        else { return }

        textOutput.text = encode(inputText: inputText, type: selectedType)
    }

    private func decode() {
        guard
            let inputText = textInput.text,
            let selectedType = selectedType
        else { return }

        textOutput.text = decode(inputText: inputText, type: selectedType)
    }

    private func encode(inputText: String, type: CodingType) -> String? {
        switch type {
        case .base16: return encodeToBase16(inputText)
        case .base32: return try? encodeToBase32(inputText, alphabet: .base32)
        case .hexBase32: return try? encodeToBase32(inputText, alphabet: .extendedHexBase32)
        case .zBase32: return try? encodeToBase32(inputText, alphabet: .zBase32)
        case .wordSafeBase32: return try? encodeToBase32(inputText, alphabet: .wordSafeBase32)
        }
    }

    private func decode(inputText: String, type: CodingType) -> String? {
        switch type {
        case .base16: return decodeFromBase16(inputText)
        case .base32: return try? decodeFromBase32(inputText, alphabet: .base32)
        case .hexBase32: return try? decodeFromBase32(inputText, alphabet: .extendedHexBase32)
        case .zBase32: return try? decodeFromBase32(inputText, alphabet: .zBase32)
        case .wordSafeBase32: return try? decodeFromBase32(inputText, alphabet: .wordSafeBase32)
        }
    }
}
