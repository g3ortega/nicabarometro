#encoding: utf-8

class AddInitialDeparments < ActiveRecord::Migration
  def up
    departments = { 
				"Boaco" => "Boaco, Nicaragua",
				"Carazo" => "Jinotepe, Nicaragua ",
				"Chinandega" => "NUXX0002",
				"Chontales" => "NUXX0009",
				"Granada" => "NUXX0003",
				"Jinotega" => "NUXX0007",
				"León" => "Leon, Nicaragua",
				"Madriz (Somoto)" => "Somoto, Nicaragua",
				"Managua" => "NUXX0004",
				"Masaya" => "Masaya, Nicaragua",
				"Matagalpa" => "Matagalpa, Nicaragua",
				"Nueva Segovia" => "Ocotal, Nicaragua",
				"Rivas" => "NUXX0005",
				"RAAN (Puerto Cabezas)" => "NUXX0008",
				"RAAS (Bluefields)" => "NUXX0001"

			}

		departments.each do |key, value|
      Department.create(name: key, query: value)
    end

  end

  def down
    Deparment.delete_all
  end
end
