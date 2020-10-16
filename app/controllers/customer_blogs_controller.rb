class CustomerBlogsController < ApplicationController
    before_action :set_customer_blog, only: [:show,:index]
    before_action :authenticate_user!, except:[:show,:index]

    def index
         @customer_blogs = CustomerBlog.all #find_by_key(params[:customer_id])
    end

    def show
    end
    
    private

    def validate_user
        redirect_to new_user_session_path, notice: "Se requiere iniciar sesión"
    end

    def set_customer_blog
        @customer_blog = CustomerBlog.find(params[:id])
    end

    def customer_blog_params
        params.require(:customer_blog).permit(:action, :new, :older, :customer_id, :field, :user_id)
    end
end
