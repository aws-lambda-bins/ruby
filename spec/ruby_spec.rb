require 'spec_helper'

RSpec.describe 'git' do
  RUBY = '/tmp/usr/bin/ruby'
  GEM = '/tmp/usr/bin/gem'
  REPO_URL = 'https://github.com/octocat/Hello-World.git'

  describe command("#{RUBY} --version") do
    its(:stdout) { should match(/ruby 2.4.0/) }
  end

  describe command("#{RUBY} -e 'puts \"Hello, World\"'") do
    its(:stdout) { should match(/Hello, World/) }
    its(:exit_status) { should eq 0 }
  end

  describe command("#{GEM} list") do
    its(:stdout) { should match(/mysql2/) }
    its(:stdout) { should match(/pg/) }
    its(:stdout) { should match(/sqlite3/) }
    its(:stdout) { should match(/rmagick/) }
  end

  describe file('dest.tar.gz') do
    it { should exist }
  end
end
