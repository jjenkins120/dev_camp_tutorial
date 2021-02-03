class PortfoliosController < ApplicationController

    def index
        @portfolio_items = Portfolio.all
    end

    def angular
      @angular_portfolio_items = Portfolio.angular
    end

    def show 
        @portfolio_item = Portfolio.find(params[:id])
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." }
            # format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new, status: :unprocessable_entity }
            # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
    end

    def edit 
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])
    
        respond_to do |format|
          if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully updated." }
            # format.json { render :show, status: :ok, location: @@portfolio_item }
          else
            format.html { render :edit, status: :unprocessable_entity }
            # format.json { render json: @@portfolio_item.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @portfolio_item = Portfolio.find(params[:id])
        @portfolio_item.destroy

        respond_to do |format|
          format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully destroyed." }
        # format.json { head :no_content }
        end
      end

end
