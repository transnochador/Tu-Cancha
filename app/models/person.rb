class Person < ActiveRecord::Base
	has_many :places
	
	validates_presence_of :name, :lastname, :doctype, :docnumber, :email, :password, :birthdate,
		:message => "no puede estar vacío"
	
	validates_uniqueness_of :email, :message => "ya existe"
	validates_confirmation_of :email, :message => "La dirección de correo no coincide"
	
	validates_format_of :email,
		:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
		:message => "no es válido"
	
	validates_confirmation_of :password, :message => "La contraseña no coincide"

end
