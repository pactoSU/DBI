require 'dicom'
require 'mongo'
require 'json'
include DICOM
include Mongo

class DBI
  def self.getAll(dicomTable, sort = "")
    puts "Retrieving all..."
    dicomTable.find()
  end
  def self.getID(dicomTable, id)
    puts "Retrieving record ##{id}..."
    dicomTable.find( { _id: { } })
  end
  def self.get(dicomTable, id = "", author = "", date = "", patient = "", sort = "")
    puts "Searching with selected parameters..."
  end
end

MONGO_SERVER = "localhost"
MONGO_PORT = 27017
DB_NAME = "dicom"
DICOM_TABLE_NAME = "dicomCollection"

db = MongoClient.new(MONGO_SERVER, MONGO_PORT).db(DB_NAME)
dicomTable = db[DICOM_TABLE_NAME]
