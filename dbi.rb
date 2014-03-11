require 'dicom'
require 'mongo'
require 'json'
include DICOM
include Mongo

class DBI
  def self.insert(collection, doc)
    collection.insert(doc)
  end
  def self.getAll(collection, sort = "")
    puts "Retrieving all..."
    collection.find.each { |doc| puts doc.inspect }
  end
  def self.getID(collection, id)
    puts "Retrieving record ##{id}..."
    collection.find( { _id: { } })
  end
  def self.get(collection, id = "", author = "", date = "", patient = "", sort = "")
    puts "Searching with selected parameters..."
  end
end

MONGO_SERVER = "localhost"
MONGO_PORT = 27017
DB_NAME = "dicom"
DICOM_TABLE_NAME = "dicomCollection"


# db = MongoClient.new(MONGO_SERVER, MONGO_PORT).db(DB_NAME)
# collection = db[DICOM_TABLE_NAME]
