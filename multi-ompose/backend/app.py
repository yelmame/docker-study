from flask import Flask, request, jsonify
from pymongo import MongoClient
import os

app = Flask(__name__)
mongo_uri = os.getenv("MONGO_URI", "mongodb://mongo:27017")
client = MongoClient(mongo_uri)
db = client["app_db"]
collection = db["items"]

@app.route('/items', methods=['GET'])
def get_items():
    items = list(collection.find({}, {'_id': 0}))
    return jsonify(items)

@app.route('/items', methods=['POST'])
def add_item():
    data = request.json
    collection.insert_one(data)
    return jsonify({"message": "Item added!"}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
