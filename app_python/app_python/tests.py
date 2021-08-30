import json
from datetime import datetime
from django.test import TestCase, Client


class TestTime(TestCase):
    def test_time(self):
        client = Client()
        response = client.get('/')
        self.assertTrue(response.status_code == 200)
        self.assertTrue(str(datetime.now().time()).split('.')[0] == str(response.content)[2:-1].split('.')[0])

