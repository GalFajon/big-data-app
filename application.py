from flask import Flask,send_from_directory, redirect, jsonify, request
import mysql.connector
import queries

#globals
columns = {
    "Year": "year",
    "Age": "age.value",
    "Gender": "gender.value"
}

groups = {
    "Year": "year",
    "Age": "age_id",
    "Gender": "gender_id"
}

# database config
db = mysql.connector.connect(
  host="awseb-e-pyp5syv6jb-stack-awsebrdsdatabase-6tv5xekvrdvj.c4p5wfyvd5hg.eu-west-1.rds.amazonaws.com",
  user="ebroot123",
  password="ebroot123",
  database="deaths",
  port="3306"
)

# flask
application = Flask(__name__)

@application.route('/')
def index():
    return redirect("./ui/index.html")

@application.route('/groups')
def get_groups():
    return jsonify(list(groups.keys())), 200

@application.route('/categories')
def get_categories():
    c = db.cursor()
    c.execute(queries.categories)
    r = c.fetchall()

    return jsonify(r), 200

@application.route('/data')
def get_data():
    c = db.cursor()

    g = request.args.get('group')
    cat = request.args.get('category')

    if g and not g in groups:
        return "Input error.", 400

    if cat and not cat.isdigit():
         return "Input error.", 400

    if g:
        g = groups[request.args.get('group')]
        col = columns[request.args.get('group')]

    if g and not cat:
        c.execute(queries.group.format(col,g))

    if g and cat:
        c.execute(queries.group_with_cause.format(col,cat,g))

    if not g and not cat:
        c.execute(queries.select_all)

    r = c.fetchall()
    return jsonify(r), 200

@application.route('/ui/<path:path>')
def send_report(path):
    return send_from_directory('./ui/', path)

if __name__ == "__main__":
    application.debug = True
    application.run(port=80)