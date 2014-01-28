require "test_helper"

class QuestionsControllerTest < ActionController::TestCase

  before do
    @question = questions(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Question.count') do
      post :create, question: {  }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  def test_show
    get :show, id: @question
    assert_response :success
  end

  def test_edit
    get :edit, id: @question
    assert_response :success
  end

  def test_update
    put :update, id: @question, question: {  }
    assert_redirected_to question_path(assigns(:question))
  end

  def test_destroy
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
