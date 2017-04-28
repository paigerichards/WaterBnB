require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { check_in_at: @booking.check_in_at, check_out_at: @booking.check_out_at, guest_count: @booking.guest_count, guest_id: @booking.guest_id, listing_id: @booking.listing_id, special_requirement: @booking.special_requirement, stripe_charge_id: @booking.stripe_charge_id } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { check_in_at: @booking.check_in_at, check_out_at: @booking.check_out_at, guest_count: @booking.guest_count, guest_id: @booking.guest_id, listing_id: @booking.listing_id, special_requirement: @booking.special_requirement, stripe_charge_id: @booking.stripe_charge_id } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
