
default['ror']['build_dir'] = '/root'
default['ror']['home_dir'] = '/root'

# RESOURCES
# system/build
default['ror']['system_packages'] = %w{git,svn,gcc,g++,unzip,automake,subversion,cmake,build-essential,pkg-config,doxygen,mercurial}
default['ror']['build_dependencies'] = %w{libfreetype6-dev,libfreeimage-dev,libzzip-dev,scons,libcurl4-openssl-dev,libgl1-mesa-dev,libxrandr-dev,libx11-dev,libxt-dev,libxaw7-dev,libglu1-mesa-dev,libxxf86vm-dev,uuid-dev,libuuid1,libgtk2.0-dev,libboost-all-dev,libopenal-dev,libois-dev,libssl-dev,libwxgtk3.0-dev }

#TODO: system_packages: make a switch for platform/family independent
#case node["platform"]
#when "debian", "ubuntu"
#  # do debian/ubuntu things
#when "redhat", "centos", "fedora"
#  # do redhat/centos/fedora things
#end


# CONTENT
# highquality, none
default['ror']['content'] = {
                                'content-pack-0.4.zip' => "http://www.rigsofrods.com/repository/viewTag/id:981/download:1",
                            }
                                #'pack_highquality04.zip' => 'http://www.rigsofrods.com/repository/downloadCDN/pack_highquality04.zip'
#broken
# nvidia-cg-toolkit
# https://launchpad.net/ubuntu/+source/nvidia-cg-toolkit
#

default['ror']['linuxscripts_git_url'] = 'https://github.com/Hiradur/rigsofrods-linuxscripts.git'


