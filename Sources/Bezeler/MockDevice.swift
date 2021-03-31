//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDevice<Content: View>: View {
    
    @Environment(\.mockDeviceStyle) private var style
    
    private let deviceType: MockDeviceType
    
    private let content: Content
    
    private var bezelCornerRadius: CGFloat {
        deviceType.screenRadius + style.bezelWidth
    }
    
    private var homeIndicatorPosition: CGPoint {
        CGPoint(x: 0.5 * deviceType.screenWidth,
                y: deviceType.screenHeight - 8 - 0.5 * deviceType.homeIndicatorHeight)
    }
    
    public init(_ deviceType: MockDeviceType, @ViewBuilder content: () -> Content) {
        self.deviceType = deviceType
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            bezel

            if style.features.contains(.buttons) {
                buttons.foregroundColor(style.bezelColor)
            }

            screen

            ZStack {
                if style.features.contains(.homeIndicator) {
                    MockDeviceHomeIndicator(for: deviceType)
                        .position(homeIndicatorPosition)
                        .foregroundColor(style.homeIndicatorColor ?? style.bezelColor)
                }
                if style.features.contains(.statusBar) {
                    MockDeviceStatusBar(for: deviceType, time: "9:41")
                        .foregroundColor(style.statusBarColor ?? style.bezelColor)
                }
            }.padding(style.bezelWidth)
            
            if style.features.contains(.notch) {
                VStack {
                    MockDeviceNotch(for: deviceType)
                        .foregroundColor(style.bezelColor)
                    Spacer()
                }
                .padding(style.bezelWidth)
            }
        }
        .frame(width: deviceType.screenWidth + style.doubleBezelWidth,
               height: deviceType.screenHeight + style.doubleBezelWidth)
        .scaleEffect(style.scale)
        .frame(width: (deviceType.screenWidth + style.doubleBezelWidth) * style.scale,
               height: (deviceType.screenHeight + style.doubleBezelWidth) * style.scale)
    }
    
    private var bezel: some View {
        RoundedRectangle(cornerRadius: bezelCornerRadius, style: .continuous)
            .foregroundColor(style.bezelColor)
    }
    
    private var buttons: some View {
        Group {
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 6, height: 60)
                .position(x: deviceType.screenWidth + style.doubleBezelWidth,
                          y: 200)
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 5, height: 26)
                .position(x: 0, y: 125)
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 6, height: 60)
                .position(x: 0, y: 200)
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 6, height: 60)
                .position(x: 0, y: 268)
        }
    }

    private var screen: some View {
        ZStack {
            if let backgroundColor = style.backgroundColor {
                backgroundColor
            }
            content
        }
        .compositingGroup()
        .clipShape(RoundedRectangle(cornerRadius: deviceType.screenRadius, style: .continuous))
        .padding(style.bezelWidth)
    }
}

struct DeviceBezel_Previews: PreviewProvider {
    static var previews: some View {
        MockDevice(.iPhone11) {
            Color.pink
        }
        .foregroundColor(.black)
        .padding()
        .background(Color.white)
    }
}
