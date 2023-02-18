# invoke student api for testing
curl -i -H "Authorization: Bearer $TOKEN" http://student:8080/istio/timeout

# valid TOKEN
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJKYWNrIiwiaXNzIjoiandrbGpoQDE2My5jb20iLCJpZCI6IjIwMzAifQ.lJ47QKUsP0LjrS9ciWi9hLZrtR9v-StLRfvKBDjYoItU7WBx7ptIkUbyhe2N_azch6aeU-ThCbDFuTcQ3xib_0tejbUi5rkuLETGvuWWNw1RRWAhcO9c5rrvASz7eiyxKEvUcOZy3rmB8wDHloDUsKEP-JifMKODFjJgmV7ogqmgmV_UnY3xMqkxlZN6ibmNp8kwUHkPHlor3ZLd8ydhzK3qhXxymSD8ZQ5O3uTg9saWfXrXpZl4CnPYDlNC6p9CwvF9sq2_4a4RZ-KXxDgxlGsOUufJDDQE020SmF8rgT073XNbnrLmLU15_N1mwBavDDYgF8iZj5zwgk1QsjY0sw

# invalid TOKEN (invalid `iss`)
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJKYWNrIiwiaXNzIjoiandrbGpoQGFsaXl1bi5jb20iLCJpZCI6IjIwMzAifQ.3Ll5hrcHzLo-neuz_Zs11LLRBFvIbdI9Be3YqbdunWa9YVx3b5VYrs_2qSqwbuW1GnVd5M2onVeWEivRZsoAw7M__tSjcflcgLvZ87cCnU9LqP2awFjsNR81br-yiCMOcX7wFeGzmIz5Mi8ohHp3C9PBlcmJjX3H32WaTf-OLznl5MKWLZT-0o0_VXsMPbKOXq2sy30i_TOit2uh3EVun9Ch7rHGb5CrQlvG-YrcEXRDIzJCxocXK9W0kA99BpGwlxihXahwH-8fN7zHOQrkGdJjFAWx-u1L70u2PY25JsqegWglxw-5fSU2vGIZAlPkBC6lQjbyBsM69ezfZawb2A

# expired TOKEN
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJKYWNrIiwiaXNzIjoiandrbGpoQDE2My5jb20iLCJpZCI6IjIwMzAiLCJleHAiOjE2NzY3MTU0MDl9.07DYguyyW1Udg09kwD_fAsBEmXmBGI2I8V0hxbkpqkGwyYSxUxQq-K0qXwu8c9BZWBq5BkJZ6MsVcrGOJIN9tJt9jLUi4DeNpFr9n15X7VF9avSfrt8kIditF7P9gJ5acNjeKl5TYS-yOyOAMBmxUlnkvHneHt5gp-I0Yw9FtPUcq8gqOxZGPdCLYionDo6ilQvM-kcB60ljx9Y4gmPSQD-6_XVb4nqVtLFcMmHXKdClGHOAgkblcH2moJT3koLuvlKbBuYudoQhMM9w-Itbe8TTikuieDEuwhNa_nINXbIjkXEa--ZVF15Qfg8W09fWpnXChugx2uBv9lwa0eiMUg

