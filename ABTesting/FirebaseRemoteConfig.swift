//
//  FirebaseRemoteConfig.swift
//  ABTesting
//
//  Created by giiiita on 2018/12/11.
//  Copyright © 2018年 giiiita. All rights reserved.
//

import Foundation
import FirebaseRemoteConfig

enum FirebaseRemoteConfigBoolParameter: String {
    case registerButtonTest = "register_button_test"
    
    var defaultValue: Bool {
        switch self {
        case .registerButtonTest: return false
        }
    }
}

class FirebaseRemoteConfigBoolParameterStore {
    func value(forKey param: FirebaseRemoteConfigBoolParameter) -> Bool {
        let remoteConfig = RemoteConfig.remoteConfig()
        remoteConfig.setDefaults([param.rawValue: param.defaultValue as NSObject])
        return remoteConfig[param.rawValue].boolValue
    }
}

