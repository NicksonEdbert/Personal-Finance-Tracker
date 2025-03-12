from flask import Flask, request, redirect, url_for, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configuration: MySQL URI (using PyMySQL)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:#0342701807Bro@localhost/financetracker'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Initialize the database
db = SQLAlchemy(app)


class User(db.Model):
    # Define the Users model based on your Users table
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
    return render_template('index.html')


@app.route('/get_users')
def get_users():
    # Query all rows from the Users table
    users = User.query.all()
    return render_template('get_users.html', users=users)


@app.route('/add_user', methods=['GET', 'POST'])
def add_user():
    if request.method == 'POST':
        # Retrieve form data
        first_name = request.form.get('first_name')
        last_name = request.form.get('last_name')
        email = request.form.get('email')
        password = request.form.get('password')

        # Create a new User instance
        new_user = User(FirstName=first_name, LastName=last_name,
                        Email=email, Password=password)
        db.session.add(new_user)
        db.session.commit()

        return redirect(url_for('get_users'))
    
    # For GET request, display the form
    return render_template('add_user.html')


if __name__ == '__main__':
    # Ensure the tables are created before running the app (run once)
    with app.app_context():
        db.create_all()
    app.run(debug=True)
