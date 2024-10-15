from flask import Flask, jsonify, request

app = Flask(__name__)

# GET 요청을 처리하는 엔드포인트
@app.route('/api/get', methods=['GET'])
def get_method():
    data = {'message': 'This is the response to the GET request.', 'status': 'success'}
    return jsonify(data)

# POST 요청을 처리하는 엔드포인트
@app.route('/api/post', methods=['POST'])
def post_method():
    input_data = request.get_json()
    response = {'received_data': input_data, 'status': 'success'}
    return jsonify(response), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
