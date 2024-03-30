class UserAwardsController < ApplicationController
  def index
    @awards = [
      "初めての投稿",
      "2回目の投稿",
      "3回目の投稿",
      "5回目の投稿",
      "10回目の投稿",
      "15回目の投稿",
      "30回目の投稿",
      "振り返りの文字数が100文字を超える",
      "振り返りの文字数が150文字を超える",
      "10時間以上勉強する",
    ]
    @current_user = current_user

    @user_awards = UserAward.find_by(user_id: @current_user.id)

  end
end
