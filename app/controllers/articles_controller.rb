class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "shivani", password: "123", except: [:index, :show]


    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end



    def new
      @article = Article.new

    end




    def create
      @article = Article.new(article_params)
        if @article.save

          ArticleMailer.welcome_email(@article).deliver_now

          # format.html { redirect_to( @article, notice: 'User was successfully created.') }
          # format.json { render json: @article, status: :created, location: @article }


        redirect_to @article
      else
        render :new, status: :unprocessable_entity
      end
  end


    def edit
      @article = Article.find(params[:id])
      # redirect_to @articles
    end

    def update
      @article = Article.find(params[:id])
      if @article.update(article_params)
        redirect_to @article
      else
        render :edit, status: :unprocessable_entity
      end
    end
    http_basic_authenticate_with name: "shivani", password: "123", only: :destroy

    def destroy
      @article = Article.find(params[:id])
      @article.destroy

      redirect_to root_path, status: :see_other
    end


    private
    def article_params
      params.require(:article).permit(:title, :body, :email,  :status)
    end


  end

