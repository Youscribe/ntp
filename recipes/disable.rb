#
# Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>
# Cookbook Name:: ntp
# Recipe:: disable
#

root_group = node['ntp']['root_group']

service node['ntp']['service'] do
  action [ :disable, :stop ]
end

node.default['ntp']['ntpdate']['disable'] = true
include_recipe "ntp::ntpdate"
