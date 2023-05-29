//
//  File.swift
//  
//
//  Created by Renat Murtazin on 22.05.2023.
//

#if os(iOS)

import UIKit

open class ExpandableCell: UITableViewCell {
  
  // MARK: - Open properties
  
  open var arrowImageView = UIImageView()
  open var trailingMargin: CGFloat = 16
  open var highlightAnimation = HighlightAnimation.animated
  
  // MARK: - Private properties
  
  private var isOpen = false
  private var initialExpansionAllowed = true
  
  // MARK: - Initializers
  
  public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    initView()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  // MARK: - Life cycle
  
  open override func awakeFromNib() {
    super.awakeFromNib()
    
    initView()
  }
  
  open override func layoutSubviews() {
    super.layoutSubviews()
    
    let widthConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 22)
    let heightConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 11)
    let centerVerticallyConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1, constant: 0)
    let trailingConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: -trailingMargin)
    arrowImageView.translatesAutoresizingMaskIntoConstraints = false
    contentView.addConstraints([widthConstraint,heightConstraint,centerVerticallyConstraint,trailingConstraint])
  }
  
  // MARK: - Internal functions
  
  func initView() {
    
    let bundle = Bundle(identifier: "RMExpandableResources")
    let image = UIImage(named: "expandableCell_arrow", in: bundle, compatibleWith: nil)
    arrowImageView.image = image
    self.contentView.addSubview(arrowImageView)
  }
  
  func open() {
    
    self.isOpen = true
    self.initialExpansionAllowed = false
    if highlightAnimation == .animated {
      UIView.animate(withDuration: 0.3) {[weak self] in
        self?.arrowImageView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 1.0, 0.0, 0.0)
      }
    }
  }
  
  func close() {
    
    self.isOpen = false
    if highlightAnimation == .animated {
      UIView.animate(withDuration: 0.3) {[weak self] in
        self?.arrowImageView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0.0, 0.0, 0.0)
      }
    }
  }
  
  func isInitiallyExpandedInternal() -> Bool {
    
    return self.initialExpansionAllowed && self.isInitiallyExpanded()
  }
  
  // MARK: - Open functions
  
  open func isExpanded() -> Bool {
    
    return isOpen
  }
  
  open func isInitiallyExpanded() -> Bool {
    
    return false
  }
  
  open func isSelectable() -> Bool {
    
    return false
  }
}

#endif
