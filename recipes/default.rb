#
# Cookbook:: customers
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'apt::default'
include_recipe 'customers::firewall'
include_recipe 'customers::webuser'
include_recipe 'customers::web'