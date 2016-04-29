require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { addresses: @card.addresses, allows_charges: @card.allows_charges, allows_payouts: @card.allows_payouts, bank_code: @card.bank_code, bank_name: @card.bank_name, card_id: @card.card_id, card_number: @card.card_number, creation_date: @card.creation_date, customer_id: @card.customer_id, expiration_month: @card.expiration_month, expiration_year: @card.expiration_year, holder_name: @card.holder_name, points: @card.points }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { addresses: @card.addresses, allows_charges: @card.allows_charges, allows_payouts: @card.allows_payouts, bank_code: @card.bank_code, bank_name: @card.bank_name, card_id: @card.card_id, card_number: @card.card_number, creation_date: @card.creation_date, customer_id: @card.customer_id, expiration_month: @card.expiration_month, expiration_year: @card.expiration_year, holder_name: @card.holder_name, points: @card.points }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
