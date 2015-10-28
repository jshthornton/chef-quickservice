#
# Cookbook Name:: quickservice
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

services = [node[:quickservice][:service]] unless node[:quickservice][:service].kind_of(Array)
actions = [node[:quickservice][:action]] unless node[:quickservice][:action].kind_of(Array)

actions.fill(actions.last, actions.length..services.length-1)

services.each_index do |i|
  service services[i] do
    action actions[i]
  end
end
