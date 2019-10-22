require 'test_helper'

class SearchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searcher = searchers(:one)
  end

  test "should get index" do
    get searchers_url
    assert_response :success
  end

  test "should get new" do
    get new_searcher_url
    assert_response :success
  end

  test "should create searcher" do
    assert_difference('Searcher.count') do
      post searchers_url, params: { searcher: { city_id: @searcher.city_id, country_id: @searcher.country_id, name: @searcher.name, payment: @searcher.payment, phone: @searcher.phone, profession: @searcher.profession, skills: @searcher.skills, surname: @searcher.surname, valuta: @searcher.valuta, wtime: @searcher.wtime } }
    end

    assert_redirected_to searcher_url(Searcher.last)
  end

  test "should show searcher" do
    get searcher_url(@searcher)
    assert_response :success
  end

  test "should get edit" do
    get edit_searcher_url(@searcher)
    assert_response :success
  end

  test "should update searcher" do
    patch searcher_url(@searcher), params: { searcher: { city_id: @searcher.city_id, country_id: @searcher.country_id, name: @searcher.name, payment: @searcher.payment, phone: @searcher.phone, profession: @searcher.profession, skills: @searcher.skills, surname: @searcher.surname, valuta: @searcher.valuta, wtime: @searcher.wtime } }
    assert_redirected_to searcher_url(@searcher)
  end

  test "should destroy searcher" do
    assert_difference('Searcher.count', -1) do
      delete searcher_url(@searcher)
    end

    assert_redirected_to searchers_url
  end
end
