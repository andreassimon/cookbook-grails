#
# Cookbook Name:: grails
# Recipe:: default
#
# Copyright 2014, Quagilis Andreas Simon
#
# All rights reserved - Do Not Redistribute
#

directory "#{node["tomcat"]["home"]}/.grails" do
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  action :create
end

directory "/var/releases" do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end
