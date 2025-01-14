require "application_system_test_case"

class MeasurementsTest < ApplicationSystemTestCase
  setup do
    @measurement = measurements(:one)
  end

  test "visiting the index" do
    visit measurements_url
    assert_selector "h1", text: "Measurements"
  end

  test "should create measurement" do
    visit measurements_url
    click_on "New measurement"

    fill_in "Dip", with: @measurement.dip
    fill_in "Latitude", with: @measurement.latitude
    fill_in "Longitude", with: @measurement.longitude
    fill_in "Strike", with: @measurement.strike
    click_on "Create Measurement"

    assert_text "Measurement was successfully created"
    click_on "Back"
  end

  test "should update Measurement" do
    visit measurement_url(@measurement)
    click_on "Edit this measurement", match: :first

    fill_in "Dip", with: @measurement.dip
    fill_in "Latitude", with: @measurement.latitude
    fill_in "Longitude", with: @measurement.longitude
    fill_in "Strike", with: @measurement.strike
    click_on "Update Measurement"

    assert_text "Measurement was successfully updated"
    click_on "Back"
  end

  test "should destroy Measurement" do
    visit measurement_url(@measurement)
    click_on "Destroy this measurement", match: :first

    assert_text "Measurement was successfully destroyed"
  end
end
