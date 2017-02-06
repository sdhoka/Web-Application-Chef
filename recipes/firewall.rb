#
# Cookbook:: customers
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'firewall::default'

ports = node['customers']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end
