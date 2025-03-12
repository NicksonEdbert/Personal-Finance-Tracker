from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configuration: MySQL URI (using PyMySQL)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:#0342701807Bro@localhost/financetracker'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Initialize the database
db = SQLAlchemy(app)

# Define the Users model based on your Users table


class User(db.Model):
    __tablename__ = 'Users'
    UserID = db.Column(db.Integer, primary_key=True)
    FirstName = db.Column(db.String(50), nullable=False)
    LastName = db.Column(db.String(50), nullable=False)
    Email = db.Column(db.String(100), nullable=False)
    Password = db.Column(db.String(150), nullable=False)
    CreatedAt = db.Column(
        db.DateTime, server_default=db.func.current_timestamp())

    def __repr__(self):
        return f"<User {self.FirstName} {self.LastName}>"


@app.route('/')
def index():
    return 'Hello Nickson!'

@app.route('/get-users')
def getUsers():
    # Query all rows from the Users table
    users = User.query.all()

    # Build a simple HTML response to display the user data
    html = '<h1>Users Table Data</h1><ul>'
    for user in users:
        html += f'<li>{user.UserID} - {user.FirstName} {user.LastName} - {user.Email}</li>'
    html += '</ul>'
    return html

# @app.route('/add-user')
# def addUser():


if __name__ == '__main__':
    app.run(debug=True)
