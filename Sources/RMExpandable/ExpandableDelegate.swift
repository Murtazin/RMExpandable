//
//  ExpandableDelegate.swift
//  
//
//  Created by Renat Murtazin on 18.05.2023.
//

#if os(iOS)

import UIKit

public protocol ExpandableDelegate: UIScrollViewDelegate {
  
  // MARK: Required functions
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]?
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]?
  
  // MARK: Optional functions
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectExpandedRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCell: UITableViewCell, didSelectExpandedRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, titleForHeaderInSection section: Int) -> String?
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightForHeaderInSection section: Int) -> CGFloat
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, viewForHeaderInSection section: Int) -> UIView?
  
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, titleForFooterInSection section: Int) -> String?
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightForFooterInSection section: Int) -> CGFloat
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, viewForFooterInSection section: Int) -> UIView?
  
  func numberOfSections(in expandableTableView: ExpandableTableView) -> Int
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didEndDisplaying cell: UITableViewCell, forRow indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplayHeaderView view: UIView, forSection section: Int)
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplayFooterView view: UIView, forSection section: Int)
  
  func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  
  func expandableTableView(_ expandableTableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  
  func expandableTableView(_ expandableTableView: UITableView, didCloseRowAt indexPath: IndexPath)
}

public extension ExpandableDelegate {
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAt indexPath: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectExpandedRowAt indexPath: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCell: UITableViewCell, didSelectExpandedRowAt indexPath: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, titleForHeaderInSection section: Int) -> String? { return nil }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightForHeaderInSection section: Int) -> CGFloat { return 0 }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, viewForHeaderInSection section: Int) -> UIView? { return nil }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, heightForFooterInSection section: Int) -> CGFloat {
    return 0
  }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, viewForFooterInSection section: Int) -> UIView? {
    return nil
  }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, titleForFooterInSection section: Int) -> String? {
    return nil
  }
  
  func numberOfSections(in expandableTableView: ExpandableTableView) -> Int { return 1 }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplay: UITableViewCell, forRowAt: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, didEndDisplaying: UITableViewCell, forRow: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplayHeaderView view: UIView, forSection section: Int) { }
  
  func expandableTableView(_ expandableTableView: ExpandableTableView, willDisplayFooterView view: UIView, forSection section: Int) { }
  
  func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool { return false }
  
  func expandableTableView(_ expandableTableView: UITableView, didHighlightRowAt indexPath: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) { }
  
  func expandableTableView(_ expandableTableView: UITableView, didCloseRowAt indexPath: IndexPath) { }
}

#endif
