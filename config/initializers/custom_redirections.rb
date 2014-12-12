Rails.application.routes.disable_clear_and_finalize = true
Redirection.all.each do |r|
  Rails.application.routes.draw { get "#{r.route}", to: redirect("#{r.redirect}") }
end
Rails.application.routes.disable_clear_and_finalize = false