//
//  MyVendingMachineTests.swift
//  MyVendingMachineTests
//
//  Created by mac on 14/07/2021.
//

import XCTest
@testable import MyVendingMachine
class MyVendingMachineTests: XCTestCase {
    var sut: MyVendingMachine!
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = MyVendingMachine()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testSettingTotalBalance() throws {
        let balance = -1.0

        // when
        sut.setTotalBalance(balance: balance)

        // then
        XCTAssertEqual(sut.testBalance, false)
    }
    
    func testItemPriceWithNegative() throws {
        let item = -1
        XCTAssertEqual(sut.getitemPrice(item: item), 0.0)
    }

    func testItemPriceWithZero() throws {
        let item = 0
        XCTAssertEqual(sut.getitemPrice(item: item), 0.0)
    }
    
    func testItemPriceWithHighValue() throws {
        let item = 70
        XCTAssertEqual(sut.getitemPrice(item: item), 0.0)
    }
    
    func testCalculateChange() throws {
        let price = 7.0
        let balance = 8.0
      
        sut.calculateChange(Balance: balance, Price: price)
        
        XCTAssertEqual(sut.getChange(), 1.0)
    }

}
