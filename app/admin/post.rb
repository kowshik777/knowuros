ActiveAdmin.register Post do
	permit_params :title, :description, :video, :meta_title, :meta_description, :permalink, :no_index
end
