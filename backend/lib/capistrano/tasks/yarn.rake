namespace :yarn do

  desc "Run yarn install task"
  task :install do
    on roles(:web) do
      within release_path do
        execute :yarn, "install"
      end
    end
  end

  desc "Run yarn production task"
  task :production do
    on roles(:web) do
      within release_path do
        execute :yarn, "production"
      end
    end
  end
end
