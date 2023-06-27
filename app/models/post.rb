class Post < ApplicationRecord
end
class Post < ApplicationRecord
   validates :title, presence: true
   validates :content, presence: true
end
