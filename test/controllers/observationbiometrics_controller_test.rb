require 'test_helper'

class ObservationbiometricsControllerTest < ActionController::TestCase
  setup do
    @observationbiometric = observationbiometrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observationbiometrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observationbiometric" do
    assert_difference('Observationbiometric.count') do
      post :create, observationbiometric: { Day0TempF: @observationbiometric.Day0TempF, Day1TempF: @observationbiometric.Day1TempF, Day2TempF: @observationbiometric.Day2TempF, Day3TempF: @observationbiometric.Day3TempF, Day4TempF: @observationbiometric.Day4TempF, Day5TempF: @observationbiometric.Day5TempF, Week0WhiteBlood: @observationbiometric.Week0WhiteBlood, Week0lymphocytes: @observationbiometric.Week0lymphocytes, Week10PCV: @observationbiometric.Week10PCV, Week10WhiteBlood: @observationbiometric.Week10WhiteBlood, Week10lymphocytes: @observationbiometric.Week10lymphocytes, Week11PCV: @observationbiometric.Week11PCV, Week11WhiteBlood: @observationbiometric.Week11WhiteBlood, Week11lymphocytes: @observationbiometric.Week11lymphocytes, Week12PCV: @observationbiometric.Week12PCV, Week12WhiteBlood: @observationbiometric.Week12WhiteBlood, Week12lymphocytes: @observationbiometric.Week12lymphocytes, Week1PCV: @observationbiometric.Week1PCV, Week1WhiteBlood: @observationbiometric.Week1WhiteBlood, Week1lymphocytes: @observationbiometric.Week1lymphocytes, Week2PCV: @observationbiometric.Week2PCV, Week2WhiteBlood: @observationbiometric.Week2WhiteBlood, Week2lymphocytes: @observationbiometric.Week2lymphocytes, Week3PCV: @observationbiometric.Week3PCV, Week3WhiteBlood: @observationbiometric.Week3WhiteBlood, Week3lymphocytes: @observationbiometric.Week3lymphocytes, Week4PCV: @observationbiometric.Week4PCV, Week4WhiteBlood: @observationbiometric.Week4WhiteBlood, Week4lymphocytes: @observationbiometric.Week4lymphocytes, Week5PCV: @observationbiometric.Week5PCV, Week5WhiteBlood: @observationbiometric.Week5WhiteBlood, Week5lymphocytes: @observationbiometric.Week5lymphocytes, Week6PCV: @observationbiometric.Week6PCV, Week6WhiteBlood: @observationbiometric.Week6WhiteBlood, Week6lymphocytes: @observationbiometric.Week6lymphocytes, Week7PCV: @observationbiometric.Week7PCV, Week7WhiteBlood: @observationbiometric.Week7WhiteBlood, Week7lymphocytes: @observationbiometric.Week7lymphocytes, Week8PCV: @observationbiometric.Week8PCV, Week8WhiteBlood: @observationbiometric.Week8WhiteBlood, Week8lymphocytes: @observationbiometric.Week8lymphocytes, Week9PCV: @observationbiometric.Week9PCV, Week9WhiteBlood: @observationbiometric.Week9WhiteBlood, Week9lymphocytes: @observationbiometric.Week9lymphocytes, treatment_id: @observationbiometric.treatment_id }
    end

    assert_redirected_to observationbiometric_path(assigns(:observationbiometric))
  end

  test "should show observationbiometric" do
    get :show, id: @observationbiometric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observationbiometric
    assert_response :success
  end

  test "should update observationbiometric" do
    patch :update, id: @observationbiometric, observationbiometric: { Day0TempF: @observationbiometric.Day0TempF, Day1TempF: @observationbiometric.Day1TempF, Day2TempF: @observationbiometric.Day2TempF, Day3TempF: @observationbiometric.Day3TempF, Day4TempF: @observationbiometric.Day4TempF, Day5TempF: @observationbiometric.Day5TempF, Week0WhiteBlood: @observationbiometric.Week0WhiteBlood, Week0lymphocytes: @observationbiometric.Week0lymphocytes, Week10PCV: @observationbiometric.Week10PCV, Week10WhiteBlood: @observationbiometric.Week10WhiteBlood, Week10lymphocytes: @observationbiometric.Week10lymphocytes, Week11PCV: @observationbiometric.Week11PCV, Week11WhiteBlood: @observationbiometric.Week11WhiteBlood, Week11lymphocytes: @observationbiometric.Week11lymphocytes, Week12PCV: @observationbiometric.Week12PCV, Week12WhiteBlood: @observationbiometric.Week12WhiteBlood, Week12lymphocytes: @observationbiometric.Week12lymphocytes, Week1PCV: @observationbiometric.Week1PCV, Week1WhiteBlood: @observationbiometric.Week1WhiteBlood, Week1lymphocytes: @observationbiometric.Week1lymphocytes, Week2PCV: @observationbiometric.Week2PCV, Week2WhiteBlood: @observationbiometric.Week2WhiteBlood, Week2lymphocytes: @observationbiometric.Week2lymphocytes, Week3PCV: @observationbiometric.Week3PCV, Week3WhiteBlood: @observationbiometric.Week3WhiteBlood, Week3lymphocytes: @observationbiometric.Week3lymphocytes, Week4PCV: @observationbiometric.Week4PCV, Week4WhiteBlood: @observationbiometric.Week4WhiteBlood, Week4lymphocytes: @observationbiometric.Week4lymphocytes, Week5PCV: @observationbiometric.Week5PCV, Week5WhiteBlood: @observationbiometric.Week5WhiteBlood, Week5lymphocytes: @observationbiometric.Week5lymphocytes, Week6PCV: @observationbiometric.Week6PCV, Week6WhiteBlood: @observationbiometric.Week6WhiteBlood, Week6lymphocytes: @observationbiometric.Week6lymphocytes, Week7PCV: @observationbiometric.Week7PCV, Week7WhiteBlood: @observationbiometric.Week7WhiteBlood, Week7lymphocytes: @observationbiometric.Week7lymphocytes, Week8PCV: @observationbiometric.Week8PCV, Week8WhiteBlood: @observationbiometric.Week8WhiteBlood, Week8lymphocytes: @observationbiometric.Week8lymphocytes, Week9PCV: @observationbiometric.Week9PCV, Week9WhiteBlood: @observationbiometric.Week9WhiteBlood, Week9lymphocytes: @observationbiometric.Week9lymphocytes, treatment_id: @observationbiometric.treatment_id }
    assert_redirected_to observationbiometric_path(assigns(:observationbiometric))
  end

  test "should destroy observationbiometric" do
    assert_difference('Observationbiometric.count', -1) do
      delete :destroy, id: @observationbiometric
    end

    assert_redirected_to observationbiometrics_path
  end
end
