class ListsController < ApplicationController
#     before_action :get_lists, only: [:show, :update, :destroy]
#
#     def index
#         lists = List.all
#         render json: lists.to_json(:include => {:items => {:only => [:id, :name, :description, :list_id]}})
#     end
#
#     def show
#         get_list
#         if list
#             render json: list.to_json(:include => {:items => {:only => [:id, :name, :description, :list_id]}})
#         else
#             render json: {message: "List not found"}
#         end
#     end
#
#     def create
#         list = List.new(list_params)
#         if list.save
#             render json: list
#         else
#             render json: {message: "list not created"}
#         end
#     end
#
#     def update
#         get_list
#         if list.update(list_params)
#             render json: list
#         else
#             render json: {message: "list not updated"}
#         end
#     end
#
#     def destroy
#         get_list
#         item.delete
#
#         render json: {listId: list.id}
#     end
#
#
#
#     private
#
#     def get_list
#         list = List.find_by(id: params[:id ])
#     end
#
#     def list_params
#         params.require(:list).permit(:name)
#     end
end
