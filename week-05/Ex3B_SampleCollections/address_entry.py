# address_entry.py
# Create contact_info dictionary and print a formatted address.

contact_info = {
    "name": "Alex Morgan",
    "address": "123 Main Street",
    "city": "Oakland",
    "state": "CA",
    "zip": "94607"
}

print(f"{contact_info['name']}\n{contact_info['address']}\n{contact_info['city']}, {contact_info['state']} {contact_info['zip']}")

# Remove the name from contact_info and add a full_name dictionary.
contact_info.pop("name")

full_name = {
    "first name": "Alex",
    "last name": "Morgan"
}

full_name.update({"honorific": "Mx."})

contact_info.update({"full_name": full_name})

print()
print(f"{contact_info['full_name']['honorific']} {contact_info['full_name']['first name']} {contact_info['full_name']['last name']}\n{contact_info['address']}\n{contact_info['city']}, {contact_info['state']} {contact_info['zip']}")
