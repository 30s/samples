import json
import requests


class AllGit(object):

    URL = 'https://api.parse.com'
    
    def __init__(self, app_id, app_key):
        self.app_id = app_id
        self.app_key = app_key
        self.headers = {
            'X-Parse-Application-Id': app_id,
            'X-Parse-REST-API-Key': app_key,
            'Content-Type': 'application/json'}


    def signup(self, username, password, email):
        data = {
            'username': username,
            'password': password,
            'email': email}
        resp = requests.post(AllGit.URL + '/1/users', 
                             data=json.dumps(data),
                             headers=self.headers)
        resp = resp.json()
        if hasattr(resp, 'objectId'):
            self.username = username
            self.object_id = resp['objectId']
            self.sessionToken = resp['sessionToken']

        return resp


    def login(self, username, password):
        params = {
            'username': username,
            'password': password}
        resp = requests.get(AllGit.URL + '/1/login',
                            params=params,
                            headers=self.headers)
        resp = resp.json()
        if hasattr(resp, 'objectId'):
            self.username = username
            self.object_id = resp['objectId']
            self.sessionToken = resp['sessionToken']

        return resp
        


if __name__=='__main__':
    import settings
    ag = AllGit(settings.PARSE_APP_ID, settings.PARSE_REST_APP_KEY)
    try:
        from IPython import embed
        embed()
    except ImportError:
        pass
