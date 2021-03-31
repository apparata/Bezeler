//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDeviceNotch: View {

    private let deviceType: MockDeviceType

    
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }

    public var body: some View {
        MockDeviceNotchShape(for: deviceType)
            .frame(width: deviceType.notchWidth + 2 * deviceType.notchTopRadius,
                   height: deviceType.notchHeight)
    }
}

public struct MockDeviceNotchShape: Shape {
    
    private let deviceType: MockDeviceType
    
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let x0 = rect.minX
        let y0 = rect.minY
        let x1 = rect.maxX
                
        let height = deviceType.notchHeight
        let topRadius = deviceType.notchTopRadius
        let bottomRadius = deviceType.notchBottomRadius
        
        let up = Angle(degrees: -90)
        let left = Angle(degrees: 180)
        let right = Angle(degrees: 0)
        let down = Angle(degrees: 90)
        
        let safeLeft = CGPoint(x: x0 - 2, y: y0 - 2)
        let safeRight = CGPoint(x: x1 + 2, y: y0 - 2)

        let startOfTopLeftArc = CGPoint(x: x0, y: y0)
        let centerOfTopLeftArc = CGPoint(x: x0, y: topRadius)
        let startOfBottomLeftArc = CGPoint(x: x0 + topRadius,
                                           y: y0 + height - bottomRadius)
        let centerOfBottomLeftArc = CGPoint(x: x0 + topRadius + bottomRadius,
                                            y: y0 + height - bottomRadius)
        
        let startOfBottomRightArc = CGPoint(x: x1 - topRadius - bottomRadius,
                                            y: y0 + height)
        let centerOfBottomRightArc = CGPoint(x: x1 - topRadius - bottomRadius,
                                            y: y0 + height - bottomRadius)
        let startOfTopRightArc = CGPoint(x: x1 - topRadius, y: topRadius)
        let centerOfTopRightArc = CGPoint(x: x1, y: topRadius)

        // Left
        
        path.move(to: safeLeft)
        path.addLine(to: startOfTopLeftArc)
        path.addArc(center: centerOfTopLeftArc,
                    radius: deviceType.notchTopRadius,
                    startAngle: up,
                    endAngle: right,
                    clockwise: false)
        path.addLine(to: startOfBottomLeftArc)
        path.addArc(center: centerOfBottomLeftArc,
                    radius: bottomRadius,
                    startAngle: left,
                    endAngle: down,
                    clockwise: true)
                
        // Bottom
        path.addLine(to: startOfBottomRightArc)
        
        // Right
        path.addArc(center: centerOfBottomRightArc,
                    radius: bottomRadius,
                    startAngle: down,
                    endAngle: right,
                    clockwise: true)
        path.addLine(to: startOfTopRightArc)
        path.addArc(center: centerOfTopRightArc,
                    radius: deviceType.notchTopRadius,
                    startAngle: left,
                    endAngle: up,
                    clockwise: false)
                
        // Top
        path.addLine(to: safeRight)
        path.addLine(to: safeLeft)
        
        return path
    }
}
