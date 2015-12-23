

# install required system packages and prerequisities
node[:ror][:system_packages].each do |pkg|
  package pkg
end

node[:ror][:build_dependencies].each do |pkg|
  package pkg
end

# installs dependencies (using RoR script)
# TODO: Rewrite with chef
script "RoRdeps" do
    interpreter "bash"
    code File.join(node[:build_dir],linuxscripts,"RoRdeps.sh")
    #environment {"aa" => "bb"}
    #user
    #group
end

