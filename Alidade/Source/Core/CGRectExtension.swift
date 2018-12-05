import Foundation
import UIKit

public extension CGRect {

  public init(size: CGSize) { self.init(origin: .zero, size: size) }

  public var hashValue: Int { return origin.hashValue ^ size.hashValue }

  public var midpoint: CGPoint { return CGPoint(x: midX, y: midY) }

}
