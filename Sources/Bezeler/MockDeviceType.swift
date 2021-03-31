//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDeviceType {
    
    public let name: String
    public let screenWidth: CGFloat
    public let screenHeight: CGFloat
    public let screenRadius: CGFloat
    public let notchWidth: CGFloat
    public let notchHeight: CGFloat
    public let notchTopRadius: CGFloat
    public let notchBottomRadius: CGFloat
    public let homeIndicatorWidth: CGFloat
    public let homeIndicatorHeight: CGFloat
    public let timeFontSize: CGFloat
    public let timePosition: CGPoint
    public let networkBarsPosition: CGPoint
    public let networkBarsWidth: CGFloat
    public let networkBarsHeight: CGFloat
    public let networkTypePosition: CGPoint
    public let networkTypeFont: CGFloat
    public let batteryPosition: CGPoint
    public let batteryWidth: CGFloat
    public let batteryHeight: CGFloat
    public let batteryStrokeWidth: CGFloat
    public let batteryEndSize: CGFloat
    public let batteryEndMaskOffset: CGFloat
    public let batteryEndPosition: CGPoint

    public init(name: String,
                screenWidth: CGFloat,
                screenHeight: CGFloat,
                screenRadius: CGFloat,
                notchWidth: CGFloat,
                notchHeight: CGFloat,
                notchTopRadius: CGFloat,
                notchBottomRadius: CGFloat,
                homeIndicatorWidth: CGFloat,
                homeIndicatorHeight: CGFloat,
                timeFontSize: CGFloat,
                timePosition: CGPoint,
                networkBarsPosition: CGPoint,
                networkBarsWidth: CGFloat,
                networkBarsHeight: CGFloat,
                networkTypePosition: CGPoint,
                networkTypeFont: CGFloat,
                batteryPosition: CGPoint,
                batteryWidth: CGFloat,
                batteryHeight: CGFloat,
                batteryStrokeWidth: CGFloat,
                batteryEndSize: CGFloat,
                batteryEndMaskOffset: CGFloat,
                batteryEndPosition: CGPoint) {
        self.name = name
        self.screenWidth = screenWidth
        self.screenHeight = screenHeight
        self.screenRadius = screenRadius
        self.notchWidth = notchWidth
        self.notchHeight = notchHeight
        self.notchTopRadius = notchTopRadius
        self.notchBottomRadius = notchBottomRadius
        self.homeIndicatorWidth = homeIndicatorWidth
        self.homeIndicatorHeight = homeIndicatorHeight
        self.timeFontSize = timeFontSize
        self.timePosition = timePosition
        self.networkBarsPosition = networkBarsPosition
        self.networkBarsWidth = networkBarsWidth
        self.networkBarsHeight = networkBarsHeight
        self.networkTypePosition = networkTypePosition
        self.networkTypeFont = networkTypeFont
        self.batteryPosition = batteryPosition
        self.batteryWidth = batteryWidth
        self.batteryHeight = batteryHeight
        self.batteryStrokeWidth = batteryStrokeWidth
        self.batteryEndSize = batteryEndSize
        self.batteryEndMaskOffset = batteryEndMaskOffset
        self.batteryEndPosition = batteryEndPosition
    }

    // MARK: iPhone 11
    
    public static let iPhone11 = MockDeviceType(
        name: "iPhone 11",
        screenWidth: 414,
        screenHeight: 896,
        screenRadius: 41.5,
        notchWidth: 230,
        notchHeight: 33,
        notchTopRadius: 6,
        notchBottomRadius: 25,
        homeIndicatorWidth: 148,
        homeIndicatorHeight: 5,
        timeFontSize: 16,
        timePosition: CGPoint(x: 51.5, y: 25),
        networkBarsPosition: CGPoint(x: 335.5, y: 25),
        networkBarsWidth: 51 / 3,
        networkBarsHeight: 32 / 3,
        networkTypePosition: CGPoint(x: 357.5, y: 25),
        networkTypeFont: 12,
        batteryPosition: CGPoint(x: 383.5, y: 24.75),
        batteryWidth: 73 / 3,
        batteryHeight: 34 / 3,
        batteryStrokeWidth: 1,
        batteryEndSize: 13 / 3,
        batteryEndMaskOffset: (13 - 5) / 3,
        batteryEndPosition: CGPoint(x: 383.5 + ((73 - 13) / (3 * 2)), y: 24.75)
    )
    
    // MARK: iPhone 11 Pro
    
    public static let iPhone11Pro = MockDeviceType(
        name: "iPhone 11 Pro",
        screenWidth: 375,
        screenHeight: 812,
        screenRadius: 39,
        notchWidth: 209,
        notchHeight: 30,
        notchTopRadius: 6,
        notchBottomRadius: 22,
        homeIndicatorWidth: 134,
        homeIndicatorHeight: 5,
        timeFontSize: 15,
        timePosition: CGPoint(x: 46.5, y: 23),
        networkBarsPosition: CGPoint(x: 302.666, y: 23),
        networkBarsWidth: 51 / 3,
        networkBarsHeight: 32 / 3,
        networkTypePosition: CGPoint(x: 324, y: 23),
        networkTypeFont: 12,
        batteryPosition: CGPoint(x: 348, y: 23),
        batteryWidth: 73 / 3,
        batteryHeight: 34 / 3,
        batteryStrokeWidth: 1,
        batteryEndSize: 13 / 3,
        batteryEndMaskOffset: (13 - 5) / 3,
        batteryEndPosition: CGPoint(x: 348 + ((73 - 13) / (3 * 2)), y: 23)
    )

    // MARK: iPhone 11 Pro Max
    
    public static let iPhone11ProMax = MockDeviceType(
        name: "iPhone 11 Pro Max",
        screenWidth: 414,
        screenHeight: 896,
        screenRadius: 39,
        notchWidth: 209,
        notchHeight: 30,
        notchTopRadius: 6,
        notchBottomRadius: 22,
        homeIndicatorWidth: 148,
        homeIndicatorHeight: 5,
        timeFontSize: 16,
        timePosition: CGPoint(x: 57, y: 23),
        networkBarsPosition: CGPoint(x: 328.1666, y: 22.333),
        networkBarsWidth: (51 * 414) / (3 * 375),
        networkBarsHeight: (32 * 414) / (3 * 375),
        networkTypePosition: CGPoint(x: 352.333, y: 23),
        networkTypeFont: 12.666,
        batteryPosition: CGPoint(x: 379.333, y: 22.666),
        batteryWidth: (73 * 414) / (3 * 375),
        batteryHeight: (34 * 414) / (3 * 375),
        batteryStrokeWidth: (3 * 414) / (3 * 375),
        batteryEndSize: (13 * 414) / (3 * 375),
        batteryEndMaskOffset: ((13 - 5) * 414) / (3 * 375),
        batteryEndPosition: CGPoint(x: 379.333 + (((73 - 13) * 414) / (3 * 2 * 375)), y: 22.666)
    )
    
    // MARK: iPhone 12 mini

    public static let iPhone12Mini = MockDeviceType(
        name: "iPhone 12 mini",
        screenWidth: 375,
        screenHeight: 812,
        screenRadius: 47.33,
        notchWidth: 226,
        notchHeight: 34,
        notchTopRadius: 6,
        notchBottomRadius: 24,
        homeIndicatorWidth: 134,
        homeIndicatorHeight: 5,
        timeFontSize: 15,
        timePosition: CGPoint(x: 44.5, y: 25),
        networkBarsPosition: CGPoint(x: 304.666, y: 25),
        networkBarsWidth: 17,
        networkBarsHeight: 10.667,
        networkTypePosition: CGPoint(x: 326, y: 25),
        networkTypeFont: 12,
        batteryPosition: CGPoint(x: 350.333, y: 25),
        batteryWidth: 73 / 3,
        batteryHeight: 34 / 3,
        batteryStrokeWidth: 1,
        batteryEndSize: 13 / 3,
        batteryEndMaskOffset: (13 - 5) / 3,
        batteryEndPosition: CGPoint(x: 350.333 + ((73 - 13) / (3 * 2)), y: 25)
    )

    // MARK: iPhone 12

    public static let iPhone12 = MockDeviceType(
        name: "iPhone 12",
        screenWidth: 390,
        screenHeight: 844,
        screenRadius: 47.33,
        notchWidth: 210,
        notchHeight: 32,
        notchTopRadius: 6,
        notchBottomRadius: 22,
        homeIndicatorWidth: 139,
        homeIndicatorHeight: 5,
        timeFontSize: 16,
        timePosition: CGPoint(x: 52, y: 25),
        networkBarsPosition: CGPoint(x: 311, y: 24.666),
        networkBarsWidth: 17,
        networkBarsHeight: 10.667,
        networkTypePosition: CGPoint(x: 333.5, y: 24.333),
        networkTypeFont: 12,
        batteryPosition: CGPoint(x: 359, y: 24.666),
        batteryWidth: 73 / 3,
        batteryHeight: 34 / 3,
        batteryStrokeWidth: 1,
        batteryEndSize: 13 / 3,
        batteryEndMaskOffset: (13 - 5) / 3,
        batteryEndPosition: CGPoint(x: 359 + ((73 - 13) / (3 * 2)), y: 24.666)
    )
    
    // MARK: iPhone 12 Pro

    public static let iPhone12Pro = MockDeviceType(
        name: "iPhone 12 Pro",
        screenWidth: 390,
        screenHeight: 844,
        screenRadius: 47.33,
        notchWidth: 210,
        notchHeight: 32,
        notchTopRadius: 6,
        notchBottomRadius: 22,
        homeIndicatorWidth: 139,
        homeIndicatorHeight: 5,
        timeFontSize: 16,
        timePosition: CGPoint(x: 52, y: 25),
        networkBarsPosition: CGPoint(x: 311, y: 24.666),
        networkBarsWidth: 17,
        networkBarsHeight: 10.667,
        networkTypePosition: CGPoint(x: 333.5, y: 25),
        networkTypeFont: 12,
        batteryPosition: CGPoint(x: 359, y: 24.5),
        batteryWidth: 73 / 3,
        batteryHeight: 34 / 3,
        batteryStrokeWidth: 1,
        batteryEndSize: 13 / 3,
        batteryEndMaskOffset: (13 - 5) / 3,
        batteryEndPosition: CGPoint(x: 359 + ((73 - 13) / (3 * 2)), y: 24.5)
    )
    
    // MARK: iPhone 12 Pro Max
    
    public static let iPhone12ProMax = MockDeviceType(
        name: "iPhone 12 Pro Max",
        screenWidth: 428,
        screenHeight: 926,
        screenRadius: 53.33,
        notchWidth: 210,
        notchHeight: 32,
        notchTopRadius: 6,
        notchBottomRadius: 22,
        homeIndicatorWidth: 153,
        homeIndicatorHeight: 5,
        timeFontSize: 17,
        timePosition: CGPoint(x: 63, y: 24.5),
        networkBarsPosition: CGPoint(x: 334, y: 24.333),
        networkBarsWidth: (51 * 428) / (3 * 375),
        networkBarsHeight: (32 * 428) / (3 * 375),
        networkTypePosition: CGPoint(x: 359, y: 24.5),
        networkTypeFont: 14,
        batteryPosition: CGPoint(x: 387, y: 24),
        batteryWidth: (73 * 428) / (3 * 375),
        batteryHeight: (34 * 428) / (3 * 375),
        batteryStrokeWidth: (3 * 428) / (3 * 375),
        batteryEndSize: (13 * 428) / (3 * 375),
        batteryEndMaskOffset: ((13 - 4) * 428) / (3 * 375),
        batteryEndPosition: CGPoint(x: 387 + (60 * 428) / (6 * 375), y: 24)
    )
}
