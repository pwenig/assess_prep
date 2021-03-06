require 'spec_helper'

describe Comment do
  before do
    @user = create_user
    @book = create_book
    @album = create_album

  end
  it "comment can be added to a book" do
    comment = Comment.new(
      user_id: @user.id,
      book_id: @book.id,
      comment: "I love this book"
    )
    expect(comment.valid?).to eq true
  end

  it "comment can be added to an album" do
    comment = Comment.new(
      user_id: @user.id,
      album_id: @album.id,
      comment: "Greatest album ever"
    )
    expect(comment.valid?).to eq true
  end
end