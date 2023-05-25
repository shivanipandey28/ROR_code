http_basic_authenticate_with name: "shivani", password: "123", only: :destroy
  def create
    @article =User.find(params[:article_id])
    @comment = @user.comments.create(book_params)
    redirect_to user_path(@user)
  end

  def destroy
    @article = Article.find(params[:user_id])
    @book = @user.books.find(params[:id])
    @book.destroy
    redirect_to user_path(@user), status: :see_other
  end

  # private
  # def comment_params
  #   params.require(:comment).permit(:commenter, :body, :status)
  # end

end
