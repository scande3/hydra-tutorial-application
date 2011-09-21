class ArticlesController < ApplicationController
  include Blacklight::Catalog
  include Hydra::Catalog
  include Hydra::AssetsControllerHelper
  
  def edit
    @article = JournalArticle.find(params[:id])
  end
  
  def new
    @article = JournalArticle.new(params[:article])
    if (@article.save)
      flash[:notice] = 'Article was successfully created.'
    else 
      flash[:error] = 'Could not create article.'
    end
    render :action=>"edit"
  end
  
  def create
    @article = JournalArticle.new(params[:article])
    # apply_depositor_metadata(@article)
    
    if (@article.save)
      unless params[:program].nil?
        redirect_to(edit_program_path(:id=>params[:program]), :notice => 'Place was successfully created.') 
      else
        render :action=>"edit"
      end
    else 
      render :action=>"edit"
    end
  end
  
end
