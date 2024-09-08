class ListsController < ApplicationController
  def new
    
    @list = List.new
    
  end
  
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    #@がついていないローカル変数はビューファイルに受け渡しができない
    
     @list = List.new(list_params)
     
   #上記をList.find(2)にすると投稿後list/2の結果が表示される
   #データをデータベースに保存するためのsaveメソッド実行
    @list.save
    
    redirect_to list_path(@list.id)
   
   
  end

  def index
    @lists = List.all  
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)  
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
