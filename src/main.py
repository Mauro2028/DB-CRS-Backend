"""
This module takes care of starting the API Server, Loading the DB and Adding the endpoints
"""
import os
from flask import Flask, request, jsonify, url_for
from flask_migrate import Migrate
from flask_swagger import swagger
from flask_cors import CORS
from utils import APIException, generate_sitemap
from admin import setup_admin
from models import db, User, Worker
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt_identity
from sqlalchemy import Boolean

app=Flask(__name__)
app.url_map.strict_slashes = False
app.config['JWT_SECRET_KEY'] = 'jugadores'
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DB_CONNECTION_STRING')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
jwt = JWTManager(app)
MIGRATE = Migrate(app, db)
db.init_app(app)
CORS(app)
setup_admin(app)

# Handle/serialize errors like a JSON object
@app.errorhandler(APIException)
def handle_invalid_usage(error):
    return jsonify(error.to_dict()), error.status_code

# generate sitemap with all your endpoints
@app.route('/')
def sitemap():
    return generate_sitemap(app)

@app.route('/user', methods=['GET'])
def handle_hello():

    response_body = {
        "msg": "Hello, this is your GET /user response "
    }

    return jsonify(response_body), 200

@app.route('/signup_manager', methods=['POST'])
def handle_signup_manager():
    """registra un manager de Gestion Humana"""

    data = request.get_json()

    if data is None:
        raise APIException("You need to specify the request body as a json object", status_code=400)
    if 'user_name' not in data:
        raise APIException('You need to specify the user', status_code=400)
    if 'full_name' not in data:
        raise APIException('You need to specify the full_name', status_code=400)
    if "password" not in data:
        raise APIException('You need to specify the password', status_code=400)

    new_hrmanager = User(user_name=data['user_name'], full_name=data['full_name'], password=data["password"],)
    db.session.add(new_hrmanager)
    db.session.commit()
    if new_hrmanager:
        return new_hrmanager.serialize(),201


# inicio de sesión para a los usuarios
@app.route("/login", methods=["POST"])
def handle_login(): 
    """ verifica el password de manager de Gestion Humana con user = data['user'] y genera un token si lo consigue"""

    
    data = request.get_json()

    if not data:
        return jsonify({"msg": "Missing JSON in request"}), 400
    
    user_name = data.get('user_name', None)
    password = data.get('password', None)

    if not user_name:
        return jsonify({"msg": "Missing user parameter"}), 400
    if not password:
        return jsonify({"msg": "Missing password parameter"}), 400
    
    admin = User.query.filter_by(user_name=user_name).one_or_none()

    if admin.check_password(password):
            response = {'jwt': create_access_token(identity=admin.user_name), 'is_user':True} #aquí crea el token del login
            return jsonify(response), 200
    if not admin :
        return jsonify({"msg": "User does not exist"}), 404


@app.route('/signup_worker', methods=['POST'])
def handle_signup_worker():
    """ Registra un trabajador para incluirlo en la DB"""
    
    data = request.get_json()

    if data is None:
        raise APIException("You need to specify the request body as a json object", status_code=400)

    new_worker = Worker(init_date=data['init_date'], Consultor=data['Consultor'], candidate=data['candidate'],  cedula=data['cedula'],
    status=data['status'],phone_number=data['phone_number'],email=data['email'],catchment_source=data['catchment_source'],managment=data['managment'],vacant=data['vacant'],Observations=data['Observations'],
    interview_date=data['interview_date'],actual_charge=data['actual_charge'],company=data['company'],sector=data['sector'],coin=data['coin'],
    basic_salary=data['basic_salary'],variable_salary=data['variable_salary'],cesta_ticket=data['cesta_ticket'],Profit_Days=data['Profit_Days'],
    vacations=data['vacations'],Vacation_Bonus=data['Vacation_Bonus'],Factor=data['Factor'],Estimated_annual_package=data['Estimated_annual_package']
    ,Production_bonus=data['Production_bonus'],Transport_bonus=data['Transport_bonus'],Savings_Bank=data['Savings_Bank'],sales_commissions=data['sales_commissions'],food_bags=data['food_bags'],
    parking_payment=data['parking_payment'],partial_HCM_Emp_Family=data['partial_HCM_Emp_Family'],Vehicle_insurance=data['Vehicle_insurance'],
    life_insurance=data['life_insurance'],
    dinning_room=data['dinning_room'],
 
    full_HCM_Emp_Family=data['full_HCM_Emp_Family']
    )
    db.session.add(new_worker) 
    db.session.commit()
    if new_worker:
        return new_worker.serialize(),201

@app.route('/worker')
def handle_all_worker():
    """Devuelve la lista de trabajadores"""
    workers = Worker.query.all()
    response_body = []
    for worker in workers:
        response_body.append(worker.serialize())
    return jsonify(response_body), 200

@app.route("/worker/<int:id>")
def handle_workers(id):
    """ buscar y regresa un trabajador"""
    workers = Worker.query.get(id)
    if isinstance(Worker, workers):
        return jsonify(workers.serialize()), 200
    else:
        return jsonify({
            "result": "worker not found"
        }), 404

@app.route('/worker/<int:id>', methods=['DELETE'])
def delete_worker(id): 
    """ elimina un trabajador por su ID"""
    db.session.delete(Worker.query.get(id) )
    db.session.commit() 
    return '', 204

@app.route('/salary', methods=["GET"])
def handle_all_salarys():
    """Devuelve la lista de salarios"""
    all_salary = db.session.query(Worker.basic_salary ) 
    basic_salarys = []
    for salary in all_salary:
        basic_salarys.append(salary[0])
    ll_salary = db.session.query( Worker.variable_salary )
    v_salarys = []
    for salary in ll_salary:
        v_salarys.append(salary[0])
    l_salary = db.session.query( Worker.cesta_ticket )
    c_salarys = []
    for salary in l_salary:
        c_salarys.append(salary[0])
    du_salary = db.session.query( Worker.Profit_Days)
    d_salarys = []
    for salary in du_salary:
        d_salarys.append(salary[0])
    dv_salary = db.session.query( Worker.vacations)
    vac_salarys = []
    for salary in dv_salary:
        vac_salarys.append(salary[0])
    bv_salary = db.session.query( Worker.Vacation_Bonus)
    b_salarys = []
    for salary in bv_salary:
        b_salarys.append(salary[0])
    fac_salary = db.session.query( Worker.Factor)
    f_salarys = []
    for salary in fac_salary:
        f_salarys.append(salary[0])
    return jsonify(basic_salarys,v_salarys, c_salarys, d_salarys, vac_salarys, b_salarys, f_salarys ), 200



@app.route('/workers', methods=['GET'])
def handle_worker():
    workers = Worker.query.all()
    response_body=[]
    for worker in workers:
        response_body.append(worker.serialize())

    return jsonify(response_body), 200

# this only runs if `$ python src/main.py` is executed
if __name__ == '__main__':
    PORT = int(os.environ.get('PORT', 3000))
    app.run(host='0.0.0.0', port=PORT, debug=False)
