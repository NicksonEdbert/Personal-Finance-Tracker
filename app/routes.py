from flask import Blueprint, render_template, request, redirect, url_for
from .models import User
from . import db

main = Blueprint('main', __name__)


@main.route('/')
def index():
    return render_template('index.html')


@main.route('/get_users')
def get_users():
    users = User.query.all()
    return render_template('get_users.html', users=users)


@main.route('/add_user', methods=['GET', 'POST'])
def add_user():
    if request.method == 'POST':
        first_name = request.form.get('first_name')
        last_name = request.form.get('last_name')
        email = request.form.get('email')
        password = request.form.get('password')

        new_user = User(FirstName=first_name, LastName=last_name,
                        Email=email, Password=password)
        db.session.add(new_user)
        db.session.commit()

        return redirect(url_for('main.get_users'))

    return render_template('add_user.html')
