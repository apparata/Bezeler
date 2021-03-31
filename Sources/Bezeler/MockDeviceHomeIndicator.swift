//
//  Copyright © 2021 Apparata AB. All rights reserved.
//

import SwiftUI

public struct MockDeviceHomeIndicator: View {
    
    private let deviceType: MockDeviceType
        
    public init(for deviceType: MockDeviceType) {
        self.deviceType = deviceType
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 0.5 * deviceType.homeIndicatorHeight)
            .frame(width: deviceType.homeIndicatorWidth,
                   height: deviceType.homeIndicatorHeight)
    }
}
