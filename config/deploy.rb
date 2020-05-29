# config valid only for current version of Capistrano
lock '3.14.0'     # capistranoのバージョンを記載。固定のバージョンを利用し続け、バージョン変更によるトラブルを防止するため。
set :application, 'drone_mail'     # Capistranoのログの表示に使う
set :repo_url,  'git@github.com:manbo1123/drone_mail.git'    # どのリポジトリからアプリをpullするかを指定

# バージョンが変わっても共通で参照するディレクトリを指定
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.5.1'

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'],
                  keys: ['~/.ssh/DroneMail.pem'] 

# プロセス番号を記載したファイルの場所
set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }

# Unicornの設定ファイルの場所
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5

# デプロイが終了後、Unicornを再起動する記述
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end