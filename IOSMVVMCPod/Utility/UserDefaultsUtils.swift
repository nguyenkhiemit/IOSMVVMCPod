//
//  UserDefaultsUtils.swift
//  IOSBaseMVVMC
//
//  Created by KhiemND on 10/3/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

public enum UserDefaultsKey: String {
    case authExpires = "authExpires-key"
    case authRefreshToken = "authRefreshToken-key"
    case authScope = "authScope-key"
    case authTokenType = "authTokenType-key"
    case authAccessToken = "authAccessToken-key"
}

public class UserDefaultUtils {
    
    static let instance = UserDefaultUtils()
    
    public func save<T>(key: UserDefaultsKey, value: T) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    public func get(key: UserDefaultsKey) -> Any? {
        return UserDefaults.standard.value(forKey: key.rawValue)
    }
    
    public func isValiAccessToken() -> Bool {
        guard let expired = get(key: .authExpires) as? Double else {
            return false
        }
        let dateFromExpired = Date(timeInterval: expired, since: Date(timeIntervalSince1970: expired))
        return fabs(dateFromExpired.timeIntervalSinceNow) > 86400
    }
    
    public func getAccessTokenWithValidate() -> String? {
        guard let tokenType = getTokenType() else {
            return nil
        }

        guard let accessToken = getAccessToken() else {
            return nil
        }

        return "\(tokenType) \(accessToken)"
    }
    
    public func getExpriesIn() -> TimeInterval? {
        return get(key: .authExpires) as? TimeInterval
    }
    
    public func getRefreshToken() -> String? {
        return get(key: .authRefreshToken) as? String
    }
    
    public func getScope() -> String? {
        return get(key: .authScope) as? String
    }
    
    public func getTokenType() -> String? {
        return get(key: .authTokenType) as? String
    }
    
    public func getAccessToken() -> String? {
        return get(key: .authAccessToken) as? String
    }
}
