require "test_helper"

class JoinTableUserToPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_to_post = join_table_user_to_posts(:one)
  end

  test "should get index" do
    get join_table_user_to_posts_url, as: :json
    assert_response :success
  end

  test "should create join_table_user_to_post" do
    assert_difference("JoinTableUserToPost.count") do
      post join_table_user_to_posts_url, params: { join_table_user_to_post: { is_readen: @join_table_user_to_post.is_readen, post_id: @join_table_user_to_post.post_id, user_id: @join_table_user_to_post.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show join_table_user_to_post" do
    get join_table_user_to_post_url(@join_table_user_to_post), as: :json
    assert_response :success
  end

  test "should update join_table_user_to_post" do
    patch join_table_user_to_post_url(@join_table_user_to_post), params: { join_table_user_to_post: { is_readen: @join_table_user_to_post.is_readen, post_id: @join_table_user_to_post.post_id, user_id: @join_table_user_to_post.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy join_table_user_to_post" do
    assert_difference("JoinTableUserToPost.count", -1) do
      delete join_table_user_to_post_url(@join_table_user_to_post), as: :json
    end

    assert_response :no_content
  end
end
