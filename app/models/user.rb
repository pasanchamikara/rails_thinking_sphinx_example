class User < ActiveRecord::Base

  after_save ThinkingSphinx::RealTime.callback_for(:user)

end
