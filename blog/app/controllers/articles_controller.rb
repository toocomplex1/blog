class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "akash", password: "secret", except: [:index, :show]

  #just checking

  def index

    #without pagination
    #@articles = Article.all

    #for pagination it is fetching pagination one by one
    #@articles = Article.paginate(:page => params[:page], :per_page => 3 )
    
    #for searching articles by name from collection page also
    @q = Article.ransack(params[:q])
    # @articles = @q.result(distinct: true).page(params[:page]).per_page(3)
    @articles = @q.result(distinct: true).includes(:tags).page(params[:page]).per_page(3)
    # or, use an explicit "per page" limit:
    #Post.paginate(:page => params[:page], :per_page => 30)

    ## render page links in the view: 
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  def edit
  @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  

  def update
  @article = Article.find(params[:id])
    if @article.update(article_params)
    redirect_to @article
    else
    render 'edit'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :tag_list,:poster)
  end
end
