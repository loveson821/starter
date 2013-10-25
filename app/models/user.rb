class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # :as => :admin 表示, 唔係 admin 就唔可以存取呢個 field
  '''若使用 rails_admin 做後台，如果要內定使用 :as => :admin，則在 config/initializers/rails_admin.rb 加入
    config.attr_accessible_role do
      current_user.admin? ? :admin : :default
    end
    這樣子在 user model 中就可以輸入 role 這個欄位了。
  '''
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
end
