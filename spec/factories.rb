FactoryBot.define do
  factory(:user) do
    name {'Paul Jones'}
    email {'pauljones@gmail.com'}
    password {'zaqA458!!'}
  end

  factory(:question) do
    title {'This is the question'}
    body_text {'asjnfkenfpmeflemflemfpmflp'}
    user_id {}

  end

  factory(:answer) do
    title {'This is an answer'}
    body_text {'asdnlkfldsfkasmkls'}
    question_id {}
    user_id {}
  end


end
