class UpdateDoctor < ActiveRecord::Migration[6.0]
  def change

  	add_reference :doctors, :speciality, foreign_key: true
  end
end
