class Article < ApplicationRecord
    include Visible

    has_many :coments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    
  end
  