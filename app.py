from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from AWS CodePipeline CI/CD! By Sourav Kumar Dey-IR-Cloudnet-Calcutta84"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)