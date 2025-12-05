def calculate_mpg(initial_miles, final_miles, gallons):
    miles_driven = final_miles - initial_miles
    mpg = miles_driven / gallons
    return mpg

def main():
    car_count = 0
    while True:
        car_count += 1
        print("Car #{}:".format(car_count))
        initial_miles = int(input("Initial miles: "))
        if initial_miles < 0:
            print("Bye")
            break
        final_miles = int(input("Final miles: "))
        gallons = int(input("Gallons: "))
        mpg = calculate_mpg(initial_miles, final_miles, gallons)
        print("Miles per Gallon of Car #{}: {:.1f}".format(car_count, mpg))

if __name__ == "__main__":
    main()
