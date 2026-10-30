from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '''
    <h1>🐳 Docker 웹서버🎉 (바인드 마운트 성공!) x</h1>
    <p>안녕하세요! Flask 서버가 실행 중입니다.</p>
    '''

@app.route('/api/status')
def status():
    return {'status': 'running', 'message': '정상 작동 중'}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
