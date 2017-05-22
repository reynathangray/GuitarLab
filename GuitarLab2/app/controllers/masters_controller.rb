class MastersController < ApplicationController
  def home
  end

  def guitarTuner
  end

  def lessonPage
  end

  def musicLibrary
  end

  def sheetMusic
  end

  def sheetMusicFalse
  end

  def welcomePage
  end

  def userStatus
  end

  def special
    flash[:success] = "Profile Status Selected. You are now a Special Member!"
  end

  def speciall
    flash[:success] = "Profile Status Selected. You are now a Teacher!"
  end

  def regular
    flash[:success] = "Profile Status Selected. You are now a Regular Member!"
  end

  def student
    flash[:success] = "Profile Status Selected. You are now a Student Member!"
  end
end
