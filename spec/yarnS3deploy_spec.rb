require "serverspec"
require "docker"

describe "yarn-s3deploy Container" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  describe "installed Apps" do
    describe command("yarn --version") do
      its(:stdout) { should match /0.27.[0-9]+/ }
    end

    describe command("phantomjs --version") do
      its(:stdout) { should match /2.1.[0-9]+/ }
    end    
  end

end