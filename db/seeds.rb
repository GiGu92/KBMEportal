Comment.create!([
  {report_id: 1, user_id: 2, text: "Yolex!"},
  {report_id: 2, user_id: 1, text: "Fos! Legyen yo!"},
  {report_id: 1, user_id: 1, text: "Köfönön fépen ^^"},
  {report_id: 4, user_id: 1, text: "LOLgec"}
])
Group.create!([
  {name: "Babhámozó kör"},
  {name: "Bázisugró kör"},
  {name: "Kerékpumpáló kör"},
  {name: "PudinghegesztőSCH"}
])
Report.create!([
  {tender_id: 1, group_id: 1, state: "Elbírálatlan", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {tender_id: 1, group_id: 2, state: "Elbírálatlan", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {tender_id: 1, group_id: 3, state: "Elfogadott", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {tender_id: 2, group_id: 3, state: "Visszautasított", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {tender_id: 2, group_id: 4, state: "Elbírálatlan", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}
])
Tender.create!([
  {user_id: 1, activity_outline: "Szart sem csináltam, adjatok kiemeltet LOL XD"},
  {user_id: 2, activity_outline: "Én vittem a házat a hátamon."},
  {user_id: 3, activity_outline: "Peti vagyok, közélő"},
  {user_id: 4, activity_outline: "Teszteltem egész évben!!!44"},
  {user_id: 5, activity_outline: "Lány vagyok"}
])
TenderRating.create!([
  {user_id: 1, tender_id: 1, rating: 5},
  {user_id: 1, tender_id: 2, rating: 3},
  {user_id: 2, tender_id: 1, rating: 4}
])
User.create!([
  {name: "Bán Dániel Péter", username: "banman", password_hash: "$2a$10$a7IhdXN0lUqH52UxQxxbc.QjZ2NGkQByz4x5/mHS6I8WiFgGl2Qnq", password_salt: "$2a$10$a7IhdXN0lUqH52UxQxxbc.", neptun: "asd123", email: "banman@sch.bme.hu", year: 2000, training_code: "5N-A30303", is_reviewer: nil},
  {name: "Szalóki Gábor", username: "szali", password_hash: "$2a$10$EqaIumnoIStuBye.EX8knuF58BTLW/63QIpIlMqOkwy/DCLh0L2OK", password_salt: "$2a$10$EqaIumnoIStuBye.EX8knu", neptun: "b0dl28", email: "gigu92@gmail.com", year: 2010, training_code: "5N-M8", is_reviewer: nil},
  {name: "Próba Péter", username: "peti", password_hash: "$2a$10$EqaIumnoIStuBye.EX8knuF58BTLW/63QIpIlMqOkwy/DCLh0L2OK", password_salt: "$2a$10$EqaIumnoIStuBye.EX8knu", neptun: "abc123", email: "peti@peti.peti", year: 2011, training_code: "5N-A8", is_reviewer: nil},
  {name: "Teszt Elek", username: "elek", password_hash: "$2a$10$EqaIumnoIStuBye.EX8knuF58BTLW/63QIpIlMqOkwy/DCLh0L2OK", password_salt: "$2a$10$EqaIumnoIStuBye.EX8knu", neptun: "asdas3", email: "elek@teszt.com", year: 2012, training_code: "5N-A8", is_reviewer: nil},
  {name: "Cserepes Virág", username: "virag", password_hash: "$2a$10$EqaIumnoIStuBye.EX8knuF58BTLW/63QIpIlMqOkwy/DCLh0L2OK", password_salt: "$2a$10$EqaIumnoIStuBye.EX8knu", neptun: "batman", email: "virag@cserepes.LOL", year: 2013, training_code: "5N-A8", is_reviewer: nil}
])
UserGroupRelation.create!([
  {user_id: 1, group_id: 1, rank: "tag"},
  {user_id: 1, group_id: 2, rank: "tag"},
  {user_id: 1, group_id: 3, rank: "körvezető"},
  {user_id: 2, group_id: 3, rank: "tag"},
  {user_id: 2, group_id: 4, rank: "gazdaságis"}
])
