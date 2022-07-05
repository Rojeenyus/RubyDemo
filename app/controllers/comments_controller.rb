class CommentsController < ApplicationController
    # get '/articles'
    def index
      @comments = Comment.all
    end
  
    # get '/articles/new'
    def new
      @comment = @article.comments.build
    end
  
    # post '/articles'
    def create
      @comment = @article.comments.build(comment_params)
  
      respond_to do |format|
        if @comment.save
          format.html { redirect_to articles_comments_path, notice: "Entry was successfully created." }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  
    # get '/articles/:id'
    def show
      @article = Article.find(params["id"])
    end
  
    def edit
    
    end
  
    def update
    
    end
  
    def delete
    
    end

    def add_like

    end
  
    private

    def get_article
      @article = Article.find(params[:article_id])
    end

    def article_params
      params.require(:comment).permit(:body, :article_id)
    end
  
  end
  