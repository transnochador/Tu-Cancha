class SitioController < ApplicationController
  def index
  @titulo = "Bienvenidoa Tu Cancha"
  end

  def quienes
  @titulo = "Quienes Somos"
  end

  def contactanos
  @titulo = "Contactanos"
  end
end
