class ArticlesController < ApplicationController
    # get '/articles'
    def index
      @articles = Article.all
      @test = "anything"
    end
  
    # get '/articles/new'
    def new
      @article = Article.new
    end
  
    # post '/articles'
    def create
      @article = Article.new(article_params)
  
      respond_to do |format|
        if @article.save
          format.html { redirect_to articles_path, notice: "Entry was successfully created." }
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
        @article = Article.find(params[:id])
        @articles.likes +=1
        @articles.save
    end
  
    private
    def article_params
      params.require(:article).permit(:name, :body)
    end
  
  end
  