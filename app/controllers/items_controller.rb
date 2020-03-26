class ItemsController < ApplicationController
    before_action :get_item, only: [:show, :update, :destroy]
#
    def index
        items = Item.all
#
        render json: items
    end
#
    def show
        get_item
#
        render json: item
    end
#
    def create
        list = List.find_by(id: params[:list_id])
        item = list.items.build(item_params)
        if item.save
            render json: item
        else
            render json: {message: "Item not created"}
        end
    end
#
    def update
        get_item
        item.update(item_params)

        render json: item
    end
#
    def destroy
        item.destroy
        render json: {itemId: item.id}
    end
#
#
    private
#
    def get_item
        item = Item.find_by(id: params[:id])
    end
#
    def item_params
        params.require(:item).permit(:name, :description, :list_id)
    end
end
