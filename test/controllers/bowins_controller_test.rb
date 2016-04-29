require 'test_helper'

class BowinsControllerTest < ActionController::TestCase
  setup do
    @bowin = bowins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bowins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bowin" do
    assert_difference('Bowin.count') do
      post :create, bowin: { bank_id: @bowin.bank_id, clabe: @bowin.clabe, name: @bowin.name, user_id: @bowin.user_id }
    end

    assert_redirected_to bowin_path(assigns(:bowin))
  end

  test "should show bowin" do
    get :show, id: @bowin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bowin
    assert_response :success
  end

  test "should update bowin" do
    patch :update, id: @bowin, bowin: { bank_id: @bowin.bank_id, clabe: @bowin.clabe, name: @bowin.name, user_id: @bowin.user_id }
    assert_redirected_to bowin_path(assigns(:bowin))
  end

  test "should destroy bowin" do
    assert_difference('Bowin.count', -1) do
      delete :destroy, id: @bowin
    end

    assert_redirected_to bowins_path
  end
end
