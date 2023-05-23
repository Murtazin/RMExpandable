//
//  ExpandableData.swift
//  
//
//  Created by Renat Murtazin on 22.05.2023.
//

#if os(iOS)

import UIKit

public struct ExpandableData {
  
  // MARK: - Public properties
  
  public var indexPath: IndexPath
  public var originalIndexPath: IndexPath
  public var expandedCells: [UITableViewCell]
  public var expandedHeights: [CGFloat]
  public var isSelectable: Bool
  
  public var expandedIndexPaths: [IndexPath] {
    var indexPaths = [IndexPath]()
    for i in 0 ..< expandedCells.count {
      let indexPath = IndexPath(row: self.indexPath.row + i + 1, section: self.indexPath.section)
      indexPaths.append(indexPath)
    }
    return indexPaths
  }
  public var expandedCellCount: Int {
    return expandedCells.count
  }
}

#endif
