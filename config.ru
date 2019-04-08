require_relative './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run 'rake db:migrate' to resolvethe issue'
end

use Rack::MethodOverride
run ApplicationController
