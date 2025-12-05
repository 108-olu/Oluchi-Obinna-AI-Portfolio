def add_values(lst):
    while True:
        value = int(input("Enter a value (enter 0 to stop adding): "))
        if value == 0:
            break
        lst.append(value)

def change_value(lst):
    index = int(input("Enter the index to change: "))
    if 0 <= index < len(lst):
        new_value = int(input("Enter the new value: "))
        lst[index] = new_value
    else:
        print("Invalid index!")

def insert_value(lst):
    index = int(input("Enter the index to insert at: "))
    if 0 <= index <= len(lst):
        value = int(input("Enter the value to insert: "))
        lst.insert(index, value)
    else:
        print("Invalid index!")

def get_index(lst):
    index = int(input("Enter the index to get: "))
    if 0 <= index < len(lst):
        print("Value at index", index, "is:", lst[index])
    else:
        print("Invalid index!")

def get_size(lst):
    print("Size of the list:", len(lst))

def print_list(lst):
    print("List:", lst)

def total(lst):
    print("Total:", sum(lst))

def average(lst):
    if lst:
        print("Average:", sum(lst) / len(lst))
    else:
        print("List is empty!")

def remove_value(lst):
    value = int(input("Enter the value to remove: "))
    if value in lst:
        lst.remove(value)
        print("Remove successful")
    else:
        print("Value not found")

def remove_location(lst):
    index = int(input("Enter the index to remove: "))
    if 0 <= index < len(lst):
        removed_value = lst.pop(index)
        print("Removed value:", removed_value)
    else:
        print("Invalid index!")

def clear_list(lst):
    lst.clear()
    print("List cleared")

def main():
    lst = []
    while True:
        print("\nMenu Options:")
        print("1. Add values")
        print("2. Change value")
        print("3. Insert value")
        print("4. Get index")
        print("5. Get size")
        print("6. Print")
        print("7. Total")
        print("8. Average")
        print("9. Remove value")
        print("10. Remove location")
        print("11. Clear")
        print("12. Exit")

        choice = int(input("Enter your choice: "))
        if choice == 1:
            add_values(lst)
        elif choice == 2:
            change_value(lst)
        elif choice == 3:
            insert_value(lst)
        elif choice == 4:
            get_index(lst)
        elif choice == 5:
            get_size(lst)
        elif choice == 6:
            print_list(lst)
        elif choice == 7:
            total(lst)
        elif choice == 8:
            average(lst)
        elif choice == 9:
            remove_value(lst)
        elif choice == 10:
            remove_location(lst)
        elif choice == 11:
            clear_list(lst)
        elif choice == 12:
            print("Exiting program...")
            break
        else:
            print("Invalid choice!")

if __name__ == "__main__":
    main()
