module CategoriesHelper
    def get_categories
        @categories = Category.all
    end
end
