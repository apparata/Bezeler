//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDeviceStatusBar: View {
    
    private let deviceType: MockDeviceType

    private let time: String
        
    public init(for deviceType: MockDeviceType, time: String) {
        self.deviceType = deviceType
        self.time = time
    }
    
    public var body: some View {
        Group {
            Text(time)
                .font(.system(size: deviceType.timeFontSize, weight: .semibold))
                .position(deviceType.timePosition)
            
            MockDeviceStatusBarNetworkBars(for: deviceType)
                .frame(width: deviceType.networkBarsWidth,
                       height: deviceType.networkBarsHeight)
                .position(deviceType.networkBarsPosition)
            
            Text("5G")
                .font(.system(size: deviceType.networkTypeFont, weight: .medium))
                .position(deviceType.networkTypePosition)
            
            Group {
                MockDeviceStatusBarBatteryOutline(for: deviceType)
                    .stroke(lineWidth: deviceType.batteryStrokeWidth)
                    .frame(width: deviceType.batteryWidth,
                           height: deviceType.batteryHeight)
                    .opacity(0.4)
                    .position(deviceType.batteryPosition)
                MockDeviceStatusBarBatteryCharge(for: deviceType)
                    .frame(width: deviceType.batteryWidth,
                           height: deviceType.batteryHeight)
                    .position(deviceType.batteryPosition)
                Circle()
                    .frame(width: deviceType.batteryEndSize,
                           height: deviceType.batteryEndSize)
                    .mask(Rectangle()
                            .frame(width: deviceType.batteryEndSize,
                                   height: deviceType.batteryEndSize)
                            .offset(x: deviceType.batteryEndMaskOffset, y: 0))
                    .opacity(0.4)
                    .position(deviceType.batteryEndPosition)
            }
        }
    }
}

public struct MockDeviceStatusBarNetworkBars: Shape {
    
    private let deviceType: MockDeviceType
    
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let dx = rect.width / 51
        let dy = rect.height / 32
        
        let width: CGFloat = 9 * dx
        let delta: CGFloat = 14 * dx
        let corner = CGSize(width: 3 * dx, height: 3 * dy)
        let height0: CGFloat = 12 * dy
        let height1: CGFloat = 18 * dy
        let height2: CGFloat = 25 * dy
        let height3: CGFloat = 32 * dy

        let bar0 = CGRect(x: 0, y: rect.height - height0, width: width, height: height0)
        let bar1 = CGRect(x: delta, y: rect.height - height1, width: width, height: height1)
        let bar2 = CGRect(x: delta * 2, y: rect.height - height2, width: width, height: height2)
        let bar3 = CGRect(x: delta * 3, y: 0, width: width, height: height3)

        path.addRoundedRect(in: bar0, cornerSize: corner, style: .continuous)
        path.addRoundedRect(in: bar1, cornerSize: corner, style: .continuous)
        path.addRoundedRect(in: bar2, cornerSize: corner, style: .continuous)
        path.addRoundedRect(in: bar3, cornerSize: corner, style: .continuous)

        return path
    }
}

public struct MockDeviceStatusBarBatteryOutline: Shape {
    
    private let deviceType: MockDeviceType
    
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let dx = rect.width / 73
        let dy = rect.height / 34
                
        let borderWidth = 3 * dx
        
        let width = 66 * dx
        let height = 34 * dy
        let chargeCorner = CGSize(width: 8 * dx, height: 8 * dy)
        
        let charge = CGRect(x: borderWidth / 2,
                            y: borderWidth / 2,
                            width: width - borderWidth,
                            height: height - borderWidth)

        path.addRoundedRect(in: charge, cornerSize: chargeCorner, style: .continuous)

        return path
    }
}

public struct MockDeviceStatusBarBatteryCharge: Shape {
    
    private let deviceType: MockDeviceType
    
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let dx = rect.width / 73
        let dy = rect.height / 34
        
        let borderWidth = 3 * dx
        
        let chargeWidth = 54 * dx
        let chargeHeight = 22 * dy
        let chargeCorner = CGSize(width: 4 * dx, height: 4 * dy)
        
        let charge = CGRect(x: borderWidth * 2,
                            y: borderWidth * 2,
                            width: chargeWidth,
                            height: chargeHeight)

        path.addRoundedRect(in: charge, cornerSize: chargeCorner, style: .continuous)

        return path
    }
}
