require 'test_helper'

class RegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get regions_url, as: :json
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post regions_url, params: { region: { bottom_1: @region.bottom_1, bottom_2: @region.bottom_2, bottom_3: @region.bottom_3, higher_than_2016_national_average: @region.higher_than_2016_national_average, name: @region.name, rank_2016: @region.rank_2016, top_1: @region.top_1, top_2: @region.top_2, top_3: @region.top_3 } }, as: :json
    end

    assert_response 201
  end

  test "should show region" do
    get region_url(@region), as: :json
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { bottom_1: @region.bottom_1, bottom_2: @region.bottom_2, bottom_3: @region.bottom_3, higher_than_2016_national_average: @region.higher_than_2016_national_average, name: @region.name, rank_2016: @region.rank_2016, top_1: @region.top_1, top_2: @region.top_2, top_3: @region.top_3 } }, as: :json
    assert_response 200
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete region_url(@region), as: :json
    end

    assert_response 204
  end
end
