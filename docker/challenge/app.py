import os
from flask import Flask
import redis

app = Flask(__name__)

redis_host = os.getenv('REDIS_HOST', 'localhost')
redis_port = int(os.getenv('REDIS_PORT', 6379))

cache = redis.Redis(host=redis_host, port=redis_port)

@app.route('/')
def home():
    return "Welcome to my app!"

@app.route('/count')
def count():
    visits = cache.incr('hits')
    return f"This page has been viewed {visits} time(s)."


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)