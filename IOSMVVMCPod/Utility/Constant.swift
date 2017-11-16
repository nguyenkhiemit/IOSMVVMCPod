//
//  Constant.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 9/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

public let LANGUAGE_KEY = "language_key"

// validate
public let PATTERN_MOBILE_REGEX = "0\\d{9,10}"
public let PATTERN_EMAIL_REGEX = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
public let PATTERN_PASSWORD_REGEX = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\s+$).{5,10}"
public let PATTERN_PASSWORD_REGEX2 = "(?=.*[0-9])(?=.*[a-zA-Z]).{8,}"
public let PATTERN_MONTH_CARD_REGEX = "(^0[1-9]){1,2}$|(^1[0-2]){1,2}$"
public let PATTERN_CCV_CARD_REGEX_3 = "^[0-9]{3}$"
public let PATTERN_CCV_CARD_REGEX_4 = "^[0-9]{4}$"
public let PATTERN_CARD_NUMBER_REGEX = "^[3-5][0-9]{9,}$"
public let PATTERN_CHECK_EMAIL_REX =
    "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}" +
        "\\@" +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
        "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
    ")+"
public let PATTERN_NAME_PERSON_REX = "[\\p{L}- ]+"
public let PATTERN_NUMBER_PHONE_REX = "(\\+[0-9]+[\\- \\.]*)?"
    + "(\\([0-9]+\\)[\\- \\.]*)?"
    + "([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"
public let PATTERN_ALPHALT_REX = "[A-z\u{00C0}-\u{00ff} \\./-]*"
