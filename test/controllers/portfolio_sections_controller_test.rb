require 'test_helper'

class PortfolioSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio_section = portfolio_sections(:one)
  end

  test "should get index" do
    get portfolio_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_section_url
    assert_response :success
  end

  test "should create portfolio_section" do
    assert_difference('PortfolioSection.count') do
      post portfolio_sections_url, params: { portfolio_section: { title: @portfolio_section.title } }
    end

    assert_redirected_to portfolio_section_url(PortfolioSection.last)
  end

  test "should show portfolio_section" do
    get portfolio_section_url(@portfolio_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_section_url(@portfolio_section)
    assert_response :success
  end

  test "should update portfolio_section" do
    patch portfolio_section_url(@portfolio_section), params: { portfolio_section: { title: @portfolio_section.title } }
    assert_redirected_to portfolio_section_url(@portfolio_section)
  end

  test "should destroy portfolio_section" do
    assert_difference('PortfolioSection.count', -1) do
      delete portfolio_section_url(@portfolio_section)
    end

    assert_redirected_to portfolio_sections_url
  end
end
