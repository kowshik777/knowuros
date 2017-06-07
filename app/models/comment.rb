class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :article
  field :name, type: String
  field :email, type: String
  field :article_id, type: String
  field :comment, type: String
end
