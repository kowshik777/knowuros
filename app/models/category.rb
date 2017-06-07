class Category
  include Mongoid::Document
  include Mongoid::Ancestry
  has_ancestry
  belongs_to :auth_user
  mount_uploader :image, FileUploader
  field :name, type: String
  field :image, type: String
  field :parent_id, type: String
end
