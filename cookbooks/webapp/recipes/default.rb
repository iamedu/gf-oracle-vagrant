#
# Cookbook Name:: webapp
# Recipe:: default
#
# Copyright 2013, Eduardo Diaz
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'java::default'
include_recipe 'glassfish::default'

cookbook_file "/vagrant/glassfish_password.txt" do
  backup false
  path "/vagrant/glassfish_password.txt"
	owner node['glassfish']['user']
	group node['glassfish']['password']
	mode 0644
  source 'glassfish_password.txt'
end


# Create a basic domain that logs to a central graylog server
glassfish_domain "devel_domain" do
  port 7080
  admin_port 7083
	username 'admin'
	password_file '/vagrant/glassfish_password.txt'
	max_stack_size 160
	action :create
end

