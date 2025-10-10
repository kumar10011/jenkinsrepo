from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello Bro Iam Anjani from Jenkins Flask Pipeline!"

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=3000)
