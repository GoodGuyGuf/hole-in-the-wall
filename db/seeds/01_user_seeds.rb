# 1
ethan = User.create(
    :name => "Ethan Gustafson", 
    :username => "GoodGuyGuf", 
    :email => "doopydupe@hotmail.com", 
    :password => "123"
)
alli = User.create(
    name: "Alli", 
    username: "alli.k", 
    email: "reviewer@gmail.com", 
    password: "456"
)

logan = User.create(
    name: "Logan",
    username: "imadog",
    email: "iwanttreats@outlook.com",
    password: "789"
)

100.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        email: Faker::Internet.safe_email,
        password: Faker::Internet.password
    )
end