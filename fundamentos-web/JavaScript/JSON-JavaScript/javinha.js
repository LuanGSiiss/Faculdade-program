const txt = '{"name": "Carlo","idade": 24,"car": null,"telefones": [{"id": 2,"numero": "47991352342"}]}';
const obj = JSON.parse(txt);
document.getElementById('12').innerHTML = obj.name;