Refinery::Authentication::Devise::User.find_each do |user|
  user.plugins.where(name: 'resource_categories').first_or_create!(
    position: (user.plugins.maximum(:position) || -1) +1
  )
end if defined?(Refinery::Authentication::Devise::User)
