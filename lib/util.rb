require 'csv'

module Util
  def self.read_csv_file(file)
    begin
      CSV.read
    rescue
      nil
    end
  end

  def self.read_first_line(file)
    begin
      barry = []
      CSV.foreach(file) do |row|
        barry << row
      end
      barry[1].join(",")
    rescue
      nil
    end
  end

  def self.write_new_entry(file)
    user = CSV.open(file, 'a', headers:true)
    user << [101, 'Ruegen', 'Aschenbrenner', 'ruegen.aschenbrenner@coderacademy.edu.au', 'Male', '192.168.1.1']

    begin
      array = []
      CSV.foreach(file) do |row|
        array << row
      end
      array.length
    rescue
      nil
    end
  end


  def self.delete_last_entry(file)
  end

end
