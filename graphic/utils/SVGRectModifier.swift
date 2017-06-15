import Foundation
class SVGRectModifier {
    /**
     * Scales the SVGRect instance from PARAM: pivot to a specific PARAM: scale scalar value (0-1)
     * IMPORTANT: this method seems to only work if its in this file (spend 3-4 hours trying to debug it, i think its either xcode or the strange array system that svg uses), you could figure this out if you mimicked the svg system and only used basic classes. Like a dummy test. Then compare unitill you got it working. For now though, we need to move on
     * TODO: impliment support for scaling the rx and ry values in the SVGRect instance, you have code for this Think fillet classes
     */
    static func scale(_ rect:SVGRect,_ pivot:CGPoint,_ scale:CGPoint) {
        let pos:CGPoint = PointModifier.scale(rect.position, pivot, scale)
        let size:CGSize = CGSize(rect.width * scale.x, rect.height * scale.y)//TODO:use CGRect scale method instead
        rect.xVal = pos.x
        rect.yVal = pos.y
        rect.width = size.width
        rect.height = size.height
    }
}
