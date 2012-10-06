#
# Cookbook Name:: dtrace-cloud-tools
# Recipe:: default
#
# Copyright 2012, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

git "/opt/local/dtrace-cloud-tools" do
  repository "git://github.com/brendangregg/dtrace-cloud-tools.git"
  reference "master"
  user "root"
  group "root"
  action :checkout
  not_if "test -d /opt/local/dtrace-cloud-tools"
end
