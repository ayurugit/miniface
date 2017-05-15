class Contact < ActiveRecord::Base
      validates :email, :name, :content, presence: true
end
