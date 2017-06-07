class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :comments
  belongs_to :auth_user
  field :title, type: String
  field :meta_description, type: String
  field :description, type: String
  field :category_id, type: String
  field :video, type: String
end
