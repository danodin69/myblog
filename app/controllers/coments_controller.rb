class ComentsController < ApplicationController
    http_basic_authenticate_with name: "com", password: "6969", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @coment = @article.coments.create(coment_params)
        redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.find(params[:article_id])
        @coment = @article.coments.find(params[:id])
        @coment.destroy
        redirect_to article_path(@article), status: :see_other
    end
    private
        def coment_params
            params.require(:coment).permit(:comenter, :body, :status)
        end
end
