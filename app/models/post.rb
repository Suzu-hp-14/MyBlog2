class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates(:title, 
    presence:{ message: "この項目は必須です"},
    length:{ minimum: 3 , message: "タイトルは３文字以上で入力してください"})
    
    validates :body,
    presence: { message: "この項目は必須です"}
end
