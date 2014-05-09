#
# Cookbook Name:: chef-server-blueprint
# Recipe:: default
#
# Copyright 2014, Ryan J. Geyer <me@ryangeyer.com>
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

node["chef-server"]["api_fqdn"] = node["chef-server-blueprint"]["api_fqdn"]
node["chef-server"]["version"] = node["chef-server-blueprint"]["version"]

include_recipe "chef-server::default"

rightscale_marker :end
