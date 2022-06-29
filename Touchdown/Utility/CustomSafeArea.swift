//
//  CustomSafeArea.swift
//  Touchdown
//
//  Created by Mixko on 29/6/2565 BE.
//

import Foundation
import UIKit

func getSafeAreaTop()->CGFloat{
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        return (keyWindow?.safeAreaInsets.top)!
    }
