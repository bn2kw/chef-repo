# Cookbook:: apache
# Recipe:: default
# Copyright:: 2017, The Authors, All Rights Reserved.
package "httpd" do
  action :install
end
cookbook_file "/var/www/html/index.html" do
  source 'index.html'
  mode 0644
end
service "httpd" do
  action [ :enable, :start]
end

