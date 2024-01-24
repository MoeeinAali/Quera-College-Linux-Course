groupadd reza-guests
useradd -m -G reza-guests user1
useradd -m -G reza-guests user2
deluser --remove-home user1
deluser --remove-home user2
delgroup reza-guests