Rails.application.routes.draw do
  get 'step_render/:key', to: 'step_load#partial', as: 'step_render'
  get 'step_cache/:key', to: 'step_load#fetch', as: 'step_cache'
end
