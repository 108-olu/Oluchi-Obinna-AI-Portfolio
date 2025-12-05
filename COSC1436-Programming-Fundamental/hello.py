def calculate_grade(average):
    if average >= 90:
        return 'A'
    elif average >= 80:
        return 'B'
    elif average >= 75:
        return 'C'
    elif average >= 70:
        return 'D'
    else:
        return 'F'

def main():
    grades = []
    for i in range(4):
        grade = float(input("Enter grade {}: ".format(i + 1)))
        grades.append(grade)

    average = sum(grades) / len(grades)

    rounded_average = round(average, 2)

    letter_grade = calculate_grade(rounded_average)  # Pass rounded_average here

    print("Average grade: {:.2f}".format(rounded_average))
    print("Letter grade: {}".format(letter_grade))

if __name__ == "__main__":
    main()
