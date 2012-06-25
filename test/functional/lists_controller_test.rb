require 'test_helper'

class ListsControllerTest < ActionController::TestCase

  def test_create
    post :create, :list => {:name => 'Hi', :description => 'This is my first list.', :priority => '6'}

    assert_redirected_to list_url(assigns(:list))
    assert_equal 'List created.', flash[:notice]
  end


  def test_show
    assert_raises(ActiveRecord::RecordNotFound) do
      get :show, :id => 72
    end
  end


  def test_edit
    assert_raises(ActiveRecord::RecordNotFound) do
      post :edit, :id => 10776
    end
  end

  def test_destroy
    assert_raises(ActiveRecord::RecordNotFound) do
      delete :destroy, :id => 10891
    end
  end

  def test_update
    assert_raises(ActiveRecord::RecordNotFound) do

      post :update, :id => 10776, :list => {:name => 'Hello', :description => 'updated list.', :priority => '6'}

      assert_redirected_to list_url(assigns(:list))
      assert_equal 'List updated.', flash[:notice]
    end
  end

end
