//
//  CountryDetailsViewModelSpec.swift
//  CovidStatsTests
//
//  Created by Chirag Chaplot on 30/5/2023.
//

import XCTest
@testable import CovidStats

final class CountryDetailsViewModelSpec: XCTestCase {

  var viewModel : CountryDetailViewModel!
  var data: CountryDataModel!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.data = CountryDataModel(updated: nil,
                                 country: "India", countryInfo: nil, cases: 12, todayCases: 12, deaths: 5, todayDeaths: 63, recovered: 52, active: 25, critical: nil, casesPerOneMillion: nil, deathsPerOneMillion: nil, tests: 85, testsPerOneMillion: nil)
    self.viewModel = CountryDetailViewModel(country: data)
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func test_name() {
    XCTAssertEqual(self.viewModel.getName(), "India")
  }

  func test_deaths() {
    XCTAssertEqual(self.viewModel.getDeaths(), "5")
  }

  func test_cases() {
    XCTAssertEqual(self.viewModel.getCases(), "5")
  }

  func test_active() {
    XCTAssertEqual(self.viewModel.getActive(), "25")
  }

  func test_recovered() {
    XCTAssertEqual(self.viewModel.getRecovered(), "52")
  }

}
