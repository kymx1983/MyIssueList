require 'test_helper'

class IssueControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get issue_index" do
    get issue_index_url
    assert_response :success
  end

  test "should get issue_show" do
    get issue_show_url
    assert_response :success
  end


  # get "issue/show/:id" => "issue#show"
  # get "issue/edit/:id" => "issue#edit"
  # post "issue/update/" => "issue#update"
  # get "issue/destroy/:id" => "issue#destroy"
  # get "issue/new" => "issue#new"
  # post "issue/create" => "issue#create"
end
