ActiveAdmin.register Comment, :as => "PostComment" do
	permit_params :name, :Comment
end