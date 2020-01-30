module Refinery
  module Admin
    class ResourceCategoriesController < ::Refinery::AdminController

      crudify :'refinery/resource_category',
              :include => [:translations],
              :paging => false,
              :xhr_paging => false,
              :sortable => true,
              :searchable => true,
              :search_conditions => '',
              :order => "position ASC"

      private

      def resource_category_params
        params.require(:resource_category).permit(:title)
      end
    end
  end
end
