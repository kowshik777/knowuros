ActiveAdmin.register Post do
	permit_params :title, :description, :video
end
