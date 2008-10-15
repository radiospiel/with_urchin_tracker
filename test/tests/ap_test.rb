require File.dirname(__FILE__) + '/../config/test.rb'

class TestController < ApplicationController
  layout "test"
end

class ActionControllerTest < ActiveRecord::TestCase
  def setup
    @controller = TestController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end
  
  def test_001
    get :index
    assert_response 200
  end
end
