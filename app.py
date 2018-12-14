from flask import Flask, render_template
from flask_bootstrap import Bootstrap

app = Flask(__name__)
Bootstrap(app)
app.config['BOOTSTRAP_SERVE_LOCAL'] = True

@app.route('/')
def index():
    return render_template('index.html') 

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')