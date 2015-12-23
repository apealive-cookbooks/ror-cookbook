#
# Cookbook Name:: ror-cookbook
# Recipe:: default - installs full RoR
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "git"
include_recipe "sudo"
include_recipe "build-essential"

include_recipe "#{cookbook_name}/linuxscripts"
include_recipe "#{cookbook_name}/dependencies"
include_recipe "#{cookbook_name}/core"
include_recipe "#{cookbook_name}/content"
