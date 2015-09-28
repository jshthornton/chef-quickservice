#
# Cookbook Name:: quickservice
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

service node[:quickservice][:service] do
  action node[:quickservice][:action]
end
