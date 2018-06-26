import Foundation
import UIKit

public extension CGSize {

  public init(side: Int) { self.init(width: side, height: side) }

  public init(side: CGFloat) { self.init(width: side, height: side) }

  public init(side: Double) { self.init(width: side, height: side) }

  public var pointValue: CGPoint { return CGPoint(x: width, y: height) }

  public var rectValue: CGRect { return CGRect(origin: .zero, size: self) }

  public var hashValue: Int { return width.hashValue ^ height.hashValue }

  public var rounded: CGSize { return CGSize(width: width.rounded(), height: height.rounded()) }

  public var ceiled: CGSize { return CGSize(width: ceil(width), height: ceil(height)) }

  public var floored: CGSize { return CGSize(width: floor(width), height: floor(height)) }
}
