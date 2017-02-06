#
# Cookbook:: customers
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Install Apache and start the service.
httpd_service 'customers1' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration.
httpd_config 'customers1' do
  instance 'customers1'
  source 'customers1.conf.erb'
  notifies :restart, 'httpd_service[customers1]'
end

# Create the document root directory.
directory node['customers']['document_root'] do
  recursive true
end

# Write the home page.
file "#{node['customers']['document_root']}/index.html" do
  content '<html>This is a placeholder</html>'
  mode '0644'
  owner node['customers']['user']
  group node['customers']['group']
end