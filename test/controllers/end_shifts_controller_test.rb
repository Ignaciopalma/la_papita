require 'test_helper'

class EndShiftsControllerTest < ActionController::TestCase
  setup do
    @end_shift = end_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:end_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create end_shift" do
    assert_difference('EndShift.count') do
      post :create, end_shift: { agreement: @end_shift.agreement, cash: @end_shift.cash, cashier_name: @end_shift.cashier_name, credit: @end_shift.credit, debit: @end_shift.debit }
    end

    assert_redirected_to end_shift_path(assigns(:end_shift))
  end

  test "should show end_shift" do
    get :show, id: @end_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @end_shift
    assert_response :success
  end

  test "should update end_shift" do
    patch :update, id: @end_shift, end_shift: { agreement: @end_shift.agreement, cash: @end_shift.cash, cashier_name: @end_shift.cashier_name, credit: @end_shift.credit, debit: @end_shift.debit }
    assert_redirected_to end_shift_path(assigns(:end_shift))
  end

  test "should destroy end_shift" do
    assert_difference('EndShift.count', -1) do
      delete :destroy, id: @end_shift
    end

    assert_redirected_to end_shifts_path
  end
end
