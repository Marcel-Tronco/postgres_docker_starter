# nice library to get mock data in controllable manner with quite some additional data types
# see at https://faker.readthedocs.io/en/stable/index.html
from faker import Faker as MockGen
import csv

mock_data_generator = MockGen()

# example data for the users table
profile_fields = [ 'username', 'mail']
profile_data = [ mock_data_generator.profile(profile_fields) for i in range(10)] # not tested/documented if that will give unique data

with open('users.csv', 'w', newline='') as csvfile:
    fieldnames = ['name', 'email']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    for profile in profile_data:
      writer.writerow({'name': profile.get('username', 'n/a'), 'email': profile.get('mail', 'n/a')})