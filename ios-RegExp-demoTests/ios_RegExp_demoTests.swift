//
//  ios_RegExp_demoTests.swift
//  ios-RegExp-demoTests
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import XCTest
@testable import ios_RegExp_demo

class ios_RegExp_demoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNumeric() {

        XCTAssertTrue("123456".isNumeric())
        XCTAssertTrue("12345".isNumeric(length: 5))

        XCTAssertFalse("1234a".isNumeric())
        XCTAssertFalse("12345".isNumeric(length: 4))
    }

    func testUrl() {

        XCTAssertTrue("http://www.yahoo.co.jp".isUrl())
        XCTAssertTrue("https://www.yahoo.co.jp".isUrl())

        XCTAssertFalse("https//www.yahoo.co.jp".isUrl())
        XCTAssertFalse("https:www.yahoo.co.jp".isUrl())
    }

    func testEmail() {

        XCTAssertTrue("rec@st-ventures.jp".isEmail())

        XCTAssertFalse("recst-ventures.jp".isEmail())
        XCTAssertFalse("rec@".isEmail())
        XCTAssertFalse("@st-ventures.jp".isEmail())
    }

    func testTelephone() {
        XCTAssertTrue("090-1234-5678".isTelephone())
        XCTAssertTrue("03-1234-5678".isTelephone())
        XCTAssertTrue("0120-1234-5678".isTelephone())

        XCTAssertFalse("1-1234-5678".isTelephone())
        XCTAssertFalse("1a-1234-5678".isTelephone())
        XCTAssertFalse("03-123a-5678".isTelephone())
        XCTAssertFalse("03-1234-5a78".isTelephone())
        XCTAssertFalse("0312345678".isTelephone())
        XCTAssertFalse("03-12345678".isTelephone())
        XCTAssertFalse("031234-5678".isTelephone())
    }

    func testDate() {
        XCTAssertTrue("2016-1-1".isdate(format:"-"))
        XCTAssertTrue("2016-12-19".isdate(format:"-"))
        XCTAssertTrue("2016/12/19".isdate(format:"/"))
        
        XCTAssertFalse("2016/12/19".isdate(format:"-"))
        XCTAssertFalse("20166-12-19".isdate(format:"-"))
        XCTAssertFalse("2016-123-19".isdate(format:"-"))
        XCTAssertFalse("2016-12-191".isdate(format:"-"))
        XCTAssertFalse("201-12-19".isdate(format:"-"))
        XCTAssertFalse("201612-19".isdate(format:"-"))
        XCTAssertFalse("2016-1219".isdate(format:"-"))
        XCTAssertFalse("201a-12-19".isdate(format:"-"))
        XCTAssertFalse("2016-1a-19".isdate(format:"-"))
        XCTAssertFalse("2016-12-1a".isdate(format:"-"))
    }

    func testTime() {
        XCTAssertTrue("20:10:10".isTime())
        XCTAssertTrue("1:1:1".isTime())

        XCTAssertFalse("10-10-10".isTime())
        XCTAssertFalse("123:10:10".isTime())
        XCTAssertFalse("12:123:10".isTime())
        XCTAssertFalse("12:12:123".isTime())
        XCTAssertFalse("1010:10".isTime())
        XCTAssertFalse("10:1010".isTime())
        XCTAssertFalse("1a:10:10".isTime())
        XCTAssertFalse("10:a0:10".isTime())
        XCTAssertFalse("10:10:1a".isTime())
    }
}
