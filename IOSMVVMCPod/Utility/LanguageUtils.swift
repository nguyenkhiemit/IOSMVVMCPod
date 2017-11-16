//
//  LanguageUtils.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 9/30/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

public class LanguageUtils {
    public class func currentLanguage() -> String? {
        return UserDefaults.standard.string(forKey: LANGUAGE_KEY)
    }
    public class func setLanguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set(lang, forKey: LANGUAGE_KEY)
        userdef.synchronize()
    }
}
