ThinkingSphinx::Index.define :user, :with => :real_time do
  indexes name, :sortable => true
  indexes phone_number
end
