//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDeviceStyle {

    public struct Features: OptionSet {
        public let rawValue: Int
        
        public static let notch = Features(rawValue: 1 << 0)
        public static let buttons = Features(rawValue: 1 << 1)
        public static let statusBar = Features(rawValue: 1 << 2)
        public static let homeIndicator = Features(rawValue: 1 << 3)
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }

    public let features: Features
    public let scale: CGFloat
    public let backgroundColor: Color
    public let bezelWidth: CGFloat
    public let bezelColor: Color
    public let statusBarColor: Color?
    public let homeIndicatorColor: Color?
    public let time: String
    
    public var doubleBezelWidth: CGFloat {
        return bezelWidth * 2
    }
    
    public init(features: Features = [.notch, .buttons, .statusBar, .homeIndicator],
                scale: CGFloat = 1,
                backgroundColor: Color = .white,
                bezelWidth: CGFloat = 15,
                bezelColor: Color = .black,
                statusBarColor: Color? = nil,
                homeIndicatorColor: Color? = nil,
                time: String = "9:41") {
        self.features = features
        self.scale = scale
        self.backgroundColor = backgroundColor
        self.bezelWidth = bezelWidth
        self.bezelColor = bezelColor
        self.statusBarColor = statusBarColor
        self.homeIndicatorColor = homeIndicatorColor
        self.time = time
    }
    
    public func replacing(features: Features? = nil,
                          scale: CGFloat? = nil,
                          backgroundColor: Color? = nil,
                          bezelWidth: CGFloat? = nil,
                          bezelColor: Color? = nil,
                          statusBarColor: Color? = nil,
                          homeIndicatorColor: Color? = nil,
                          time: String? = nil) -> MockDeviceStyle {
        return MockDeviceStyle(
            features: features ?? self.features,
            scale: scale ?? self.scale,
            backgroundColor: backgroundColor ?? self.backgroundColor,
            bezelWidth: bezelWidth ?? self.bezelWidth,
            bezelColor: bezelColor ?? self.bezelColor,
            statusBarColor: statusBarColor ?? self.statusBarColor,
            homeIndicatorColor: homeIndicatorColor ?? self.homeIndicatorColor,
            time: time ?? self.time)
    }
}

public struct MockDeviceStyleKey: EnvironmentKey {
    public static let defaultValue = MockDeviceStyle()
}

extension EnvironmentValues {
    public var mockDeviceStyle: MockDeviceStyle {
        get {
            return self[MockDeviceStyleKey.self]
        }
        set {
            self[MockDeviceStyleKey.self] = newValue
        }
    }
}

public struct MockDeviceStyleModifier: ViewModifier {
    
    public let value: MockDeviceStyle
    
    public func body(content: Content) -> some View {
        content.environment(\.mockDeviceStyle, value)
    }
}

extension View {
    
    public func mockDeviceStyle(_ value: MockDeviceStyle) -> some View {
        self.modifier(MockDeviceStyleModifier(value: value))
    }
    
    public func mockDeviceFeatures(_ features: MockDeviceStyle.Features) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(features: features)
        }
    }

    public func mockDeviceScale(_ scale: CGFloat) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(scale: scale)
        }
    }

    public func mockDeviceBackgroundColor(_ color: Color) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(backgroundColor: color)
        }
    }
    
    public func mockDeviceBezelWidth(_ width: CGFloat) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(bezelWidth: width)
        }
    }
    
    public func mockDeviceBezelColor(_ color: Color) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(bezelColor: color)
        }
    }

    public func mockDeviceStatusBarColor(_ color: Color) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(statusBarColor: color)
        }
    }

    public func mockDeviceHomeIndicatorColor(_ color: Color) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(homeIndicatorColor: color)
        }
    }

    public func mockDeviceTime(_ time: String) -> some View {
        transformEnvironment(\.mockDeviceStyle) { style in
            style = style.replacing(time: time)
        }
    }

}
