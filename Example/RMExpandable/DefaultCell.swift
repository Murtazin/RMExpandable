//
//  DefaultCell.swift
//  
//
//  Created by Renat Murtazin on 23.05.2023.
//

import UIKit

final class DefaultCell: UITableViewCell {
  
  // MARK: - Private properties
  
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.textColor = .label
    return label
  }()
  
  // MARK: - Initializers
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Internal functions
  
  func configure(text: String, backgroundColor: UIColor) {
    self.titleLabel.text = text
    self.backgroundColor = backgroundColor
  }
}

// MARK: - Private functions

private extension DefaultCell {
  
  func setupUI() {
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    
    contentView.addSubview(titleLabel)
    
    NSLayoutConstraint.activate([
      titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
      titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
  }
}
