ApplicationRecord.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  user1 = User.create(username: "ken")
  user2 = User.create(username: "phil")
  
  p1 = Poll.create(title: "sushi", user_id: user1.id)

  q1 = Question.create(body: "wat best sushi?", poll_id: p1.id)

  a1 = AnswerChoice.create(choice: "ryan's", question_id: q1.id)
  a2 = AnswerChoice.create(choice: "kusakabe", question_id: q1.id)
  a3 = AnswerChoice.create(choice: "oma", question_id: q1.id)

  r1 = Response.create(answer_choice_id: a1.id, user_id: user1.id)
  r2 = Response.create(answer_choice_id: a2.id, user_id: user2.id)

end