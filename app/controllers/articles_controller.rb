class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    # new shows the form to fill out.
    def new
        @article = Article.new
    end
    # create takes the input from the user and stores it in the instance variable.
    def create
        @article = Article.new
        @article.title = params[:title]
        @article.description = params[:description]
        @article.save
        redirect_to article_path(@article)
    end

    # add edit and update methods here
    # edit, similar to show, allows access to all the parameters of the object based on id.
    def edit
        @article = Article.find(params[:id])
    end
    # update is similar to "create" but updates an existing instance vs creating a new instance.
    def update
        @article = Article.find(params[:id])
        @article.update(title: params[:article][:title], description: params[:article][:description])
        redirect_to article_path(@article)
    end
end
