module ApplicationHelper
  def active_link_class?(resource_name)
    'active' if controller_name == resource_name
  end
end
