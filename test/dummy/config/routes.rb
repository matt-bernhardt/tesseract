Rails.application.routes.draw do
  mount Tesseract::Engine => "/tesseract"
end
