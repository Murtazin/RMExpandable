//
//  ViewController.swift
//  RMExpandable
//
//  Created by Murtazin on 05/17/2023.
//  Copyright (c) 2023 Murtazin. All rights reserved.
//

import UIKit
import RMExpandable

final class ViewController: UIViewController {
  
  // MARK: - Private properties
  
  private let expandableTableView = ExpandableTableView()
  
  // MARK: - Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    setupUI()
  }
}

// MARK: - Private functions

private extension ViewController {
  
  func setupUI() {
    
    expandableTableView.animation = .automatic
    expandableTableView.expandableDelegate = self
    expandableTableView.translatesAutoresizingMaskIntoConstraints = false
    
    expandableTableView.register(DefaultCell.self, forCellReuseIdentifier: "DefaultCellID")
    expandableTableView.register(ExampleCell.self, forCellReuseIdentifier: "ExampleCellID")
    
    view.addSubview(expandableTableView)
    
    NSLayoutConstraint.activate([
      expandableTableView.topAnchor.constraint(equalTo: view.topAnchor),
      expandableTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      view.bottomAnchor.constraint(equalTo: expandableTableView.bottomAnchor, constant: 128),
      view.trailingAnchor.constraint(equalTo: expandableTableView.trailingAnchor)])
    
    let openAllButton = UIButton()
    openAllButton.setTitle("open all", for: .normal)
    openAllButton.setTitleColor(.systemBlue, for: .normal)
    openAllButton.translatesAutoresizingMaskIntoConstraints = false
    openAllButton.addTarget(self, action: #selector(openAllButtonTapped), for: .touchUpInside)
    
    view.addSubview(openAllButton)
    
    NSLayoutConstraint.activate([
      openAllButton.widthAnchor.constraint(equalToConstant: 64),
      openAllButton.heightAnchor.constraint(equalToConstant: 64),
      openAllButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: openAllButton.bottomAnchor)])
    
    let closeAllButton = UIButton()
    closeAllButton.setTitle("close all", for: .normal)
    closeAllButton.setTitleColor(.systemGreen, for: .normal)
    closeAllButton.translatesAutoresizingMaskIntoConstraints = false
    closeAllButton.addTarget(self, action: #selector(closeAllButtonTapped), for: .touchUpInside)
    
    view.addSubview(closeAllButton)
    
    NSLayoutConstraint.activate([
      closeAllButton.widthAnchor.constraint(equalToConstant: 128),
      closeAllButton.heightAnchor.constraint(equalToConstant: 64),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: closeAllButton.bottomAnchor),
      view.trailingAnchor.constraint(equalTo: closeAllButton.trailingAnchor, constant: 16)])
  }
}

// MARK: - Objc functions

@objc private extension ViewController {
  
  func openAllButtonTapped(sender: UIButton) {
    
    expandableTableView.openAll()
  }
  
  func closeAllButtonTapped(sender: UIButton) {
    
    expandableTableView.closeAll()
  }
}

// MARK: - ExpandableDelegate

extension ViewController: ExpandableDelegate {
 
  func numberOfSections(in expandableTableView: ExpandableTableView) -> Int {
    return 2
  }
  
  func expandableTableView(_ tableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCellID") as? DefaultCell else { return nil }
    cell.configure(text: "default", backgroundColor: .systemYellow)
    return [cell]
  }
  
  func expandableTableView(_ tableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
    return [64]
  }
  
  func expandableTableView(_ tableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0:
      return 3
    default:
      return 3
    }
  }
  
  func expandableTableView(_ tableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCellID") as? ExampleCell else { return UITableViewCell() }
    cell.configure(text: "example", backgroundColor: .systemCyan)
    return cell
  }
  
  func expandableTableView(_ tableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 64
  }
  
  func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
    return true
  }
}
