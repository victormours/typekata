module Views
  class Layouts::Application < ActionView::Mustache
    def google_analytics_tracking_id
      Secrets[:google_analytics_tracking_id]
    end
  end
end
