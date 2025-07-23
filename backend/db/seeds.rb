questions_data = [
  {
    question: "What council defined the doctrine of papal infallibility?",
    options: ["Council of Trent", "Second Vatican Council", "First Vatican Council", "Council of Nicaea"],
    answer: "First Vatican Council",
    difficulty: "hard",
    category: "doctrine"
  },
  {
    question: "Which Pope initiated the Second Vatican Council?",
    options: ["Pope Pius XII", "Pope John XXIII", "Pope Paul VI", "Pope Benedict XVI"],
    answer: "Pope John XXIII",
    difficulty: "medium",
    category: "popes and saints"
  },
  {
    question: "What is the first sacrament a Catholic receives?",
    options: ["Confirmation", "Baptism", "Eucharist", "Reconciliation"],
    answer: "Baptism",
    difficulty: "easy",
    category: "sacraments"
  },
  {
    question: "What is the name of the liturgical season before Easter?",
    options: ["Advent", "Lent", "Pentecost", "Ordinary Time"],
    answer: "Lent",
    difficulty: "easy",
    category: "lithurg and sacraments"
  },
  {
    question: "Which Gospel contains the Sermon on the Mount?",
    options: ["Luke", "Mark", "John", "Matthew"],
    answer: "Matthew",
    difficulty: "medium",
    category: "bible"
  },
  {
    question: "What Catholic feast celebrates the descent of the Holy Spirit on the Apostles?",
    options: ["Ascension", "Corpus Christi", "Pentecost", "All Saints' Day"],
    answer: "Pentecost",
    difficulty: "easy",
    category: "lithurg and sacraments"
  },
  {
    question: "Who is known as the 'Angelic Doctor' of the Church?",
    options: ["St. Thomas Aquinas", "St. Augustine", "St. Francis of Assisi", "St. Ignatius of Loyola"],
    answer: "St. Thomas Aquinas",
    difficulty: "medium",
    category: "popes and saints"
  },
  {
    question: "Which Church document is considered the Catholic Catechism's foundation?",
    options: ["Lumen Gentium", "Dei Verbum", "The Catechism of the Catholic Church", "Gaudium et Spes"],
    answer: "The Catechism of the Catholic Church",
    difficulty: "medium",
    category: "doctrine"
  },
  {
    question: "Which country is home to the largest Catholic population in the world?",
    options: ["Italy", "Mexico", "Brazil", "Philippines"],
    answer: "Brazil",
    difficulty: "medium",
    category: "culture"
  },
  {
    question: "In what year did the Council of Trent begin?",
    options: ["1545", "1517", "1600", "1492"],
    answer: "1545",
    difficulty: "hard",
    category: "history"
  }
]

questions_data.each do |data|
  Question.find_or_create_by!(question: data[:question]) do |q|
    q.options = data[:options]
    q.answer = data[:answer]
    q.difficulty = data[:difficulty]
    q.category = data[:category]
  end
end
