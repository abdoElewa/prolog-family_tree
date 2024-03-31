from faker import Faker
import random
import csv

class FakeDataMaker:
    def __init__(self):
        self.fake = Faker()
        self.male_names = []
        self.female_names = []
        while len(self.male_names) < 50:
            self.male_names.append(self.fake.first_name_male())
        while len(self.female_names) < 50:
            self.female_names.append(self.fake.first_name_female())

    def generate_first_generation(self):
        num_people = len(self.male_names) + len(self.female_names)
        avg_children = int(1.1 * num_people)
        first_generation = []
        for name in self.male_names:
            num_wives = random.randint(1, 4)
            wives = random.sample(self.female_names, min(num_wives, len(self.female_names)))
            num_children = random.randint(0, avg_children)
            children = random.sample(self.male_names + self.female_names, min(num_children, num_people))
            first_generation.append({
                "gender": "male",
                "name": name,
                "wives": wives,
                "children_names": children
            })

        for name in self.female_names:
            spouse = random.choice(self.male_names)
            children = random.sample(self.male_names + self.female_names, min(random.randint(0, avg_children), num_people))
            first_generation.append({
                "gender": "female",
                "name": name,
                "spouse_name": spouse,
                "children_names": children
            })

        return first_generation

    def write_to_csv(self, data, filename):
        with open(filename, 'w', newline='') as csvfile:
            fieldnames = ['gender', 'name', 'spouse_name', 'wives', 'children_names']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(data)

if __name__ == "__main__":
    fake_data = FakeDataMaker()
    first_generation_data = fake_data.generate_first_generation()
    fake_data.write_to_csv(first_generation_data, 'first_generation.csv')
