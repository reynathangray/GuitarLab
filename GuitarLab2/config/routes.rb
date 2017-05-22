Rails.application.routes.draw do

  get 'sheet_music/song1'
  get 'sheet_music/song2'
  get 'sheet_music/song3'
  get 'sheet_music/song4'
  get 'sheet_music/song5'
  get 'sheet_music/song6'
  get 'sheet_music/song7'
  get 'sheet_music/song8'
  get 'sheet_music/song9'
  get 'sheet_music/song10'

  resources :tuners
  get 'chords/chordlibrary'


  get 'profile_infos/new'
  get 'profile_infos/show'

  get 'accounts/profile'
  get 'accounts/settings'

  get 'masters/home'
  get 'masters/guitarTuner'
  get 'masters/lessonPage'
  get 'masters/musicLibrary'
  get 'masters/sheetMusic'
  get 'masters/sheetMusicFalse'
  get 'masters/welcomePage'
  get 'masters/userStatus'
  get 'masters/special'
  get 'masters/speciall'
  get 'masters/regular'
    get 'masters/student'

  get 'sessions/new'
  get 'users/new'


  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :chords
  resources :users
  resources :profile_infos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'masters#welcomePage'
end
