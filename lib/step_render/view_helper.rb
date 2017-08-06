# frozen_string_literal: true
module StepRender
  module ViewHelper
    def step_render(*options)
      key = "lazy-partial-#{SecureRandom.hex(12)}"
      cookies.signed[key] = { value: Marshal.dump(ActiveJob::Arguments.serialize(options)), expires: 2.hour.from_now }
      # if use cache store
      # Rails.cache.fetch(key, skip_digest: true, expires_in: 10.minute) { ActiveJob::Arguments.serialize(options) }
      %(<div class= "related-articles lazyload" data-include="#{step_render_path(key)}">loading</div>).html_safe
    end
    def import_step_render
      '<script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/3.0.0/lazysizes.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/3.0.0/plugins/include/ls.include.min.js"></script>'.html_safe
    end
  end
end
