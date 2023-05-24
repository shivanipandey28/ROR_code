class UsersController < ApplicationController
    http_basic_authenticate_with name: "shivani", password: "123", except: [:index, :show]
      def index
        @users = User.all
      end

      def show
        @user = User.find(params[:id])
      end

      def new
        @user = User.new
      end

      def create
        @user = User.new(article_params)

        if @user.save
          redirect_to @article
        else
          render :new, status: :unprocessable_entity
          puts " there is  error to save "
        end
      end

      def edit
        @user = User.find(params[:id])

      end

      def update
        @user = User.find(params[:id])

        if @user.update(article_params)
          redirect_to @user
        else
          render :edit, status: :unprocessable_entity
        end
      end
      http_basic_authenticate_with name: "shivani", password: "123", only: :destroy

      def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to root_path, status: :see_other
      end


      private
      def user_params
        params.require(:article).permit(:name, :mobile, :email)
      end




end
