require 'rails_helper'
describe Post do
  before do
    @user = FactoryBot.create(:user)
    @title = Title.where(title_name: 'JOKER').first_or_initialize
    @title.save
    @post = FactoryBot.build(:post_title, user_id: @user.id, title_id: @title.id)
  end

  describe '投稿' do
    context '投稿が上手く行く時' do
      it 'title_name、genre_id、spoiler、contentが存在すれば投稿できる' do
        expect(@post).to be_valid
      end
    end

    context '投稿が上手く行かない時' do
      it 'title_nameが空では投稿できない' do
        @post.title_name = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Title name can't be blank")
      end

      it 'genre_idが1では投稿できない' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Genre must be other than 1')
      end

      it 'spoilerが空では登録できない' do
        @post.spoiler = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('Spoiler is not included in the list')
      end

      it 'contentが空では投稿できない' do
        @post.content = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
