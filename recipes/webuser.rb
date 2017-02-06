#
# Cookbook:: customers
# Recipe:: webuser
#
# Copyright:: 2017, The Authors, All Rights Reserved.
group node['customers']['group']

user node['customers']['user'] do
  group node['customers']['group']
  system true
  shell '/bin/bash'
end