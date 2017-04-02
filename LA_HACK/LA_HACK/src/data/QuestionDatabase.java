package data;
import java.util.ArrayList;
import java.util.List;



public class QuestionDatabase {
	public static List<Question> allQuestions = new ArrayList<Question>();
	
	public QuestionDatabase(int num){
		String answer = "I asked him a simple question and he gave me a long and confusing answer. I didn't believe her answer. "
				+ "They wouldn't give me a straight answer to my question. I didn't know the right answer. That is the wrong answer."
				+ "Do you know the answer to this question?"
				+ "He knew the answers to only 3 of the 10 questions."
				+ "The answers are listed in the back of the book.";
		for(int i = 0; i < num; i++){
			if(i/2 == 0){
				// short question
				Question shortQ = new Question("Asker", "Answer", "Short Question "+new Integer(i).toString(), 100*i);
				
				shortQ.setAnswer(answer);
				allQuestions.add(shortQ);
			}
			else{
				Question longQ = new Question("Asker", "Answer", "You have two correct answers from Garrick and Konstantinos already. But if you still want to somehow ask, you can do what I am suggesting. "
						+ "Write your main question very briefly, off line, in a text editor. Immediately afterwards, post your comment. There is no limit to the length except the reader's patience. The bot will be helpless to do anything. "
						+ "While this workaround will enable you to break the rules, it won't guarantee you any answers. Question "+new Integer(i).toString(), 100*i);
				longQ.setAnswer(answer);
				allQuestions.add(longQ);
			}
		}
		
	}
	
	
	public void addQuestion(Question q){
		allQuestions.add(q);
	}
	
}
