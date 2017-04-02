package data;
import java.util.ArrayList;
import java.util.List;

import client.*;

public class QuestionDatabase {
	public static List<Question> allQuestions = new ArrayList<Question>();
	
	public QuestionDatabase(int num){
		for(int i = 0; i < num; i++){
			if(i/2 == 0){
				// short question
				Question shortQ = new Question("Asker", "Answer", "Short Question "+new Integer(i).toString(), 100*i);
				allQuestions.add(shortQ);
			}
			else{
				Question longQ = new Question("Asker", "Answer", "You have two correct answers from Garrick and Konstantinos already. But if you still want to somehow ask, you can do what I am suggesting. "
						+ "Write your main question very briefly, off line, in a text editor. Immediately afterwards, post your comment. There is no limit to the length except the reader's patience. The bot will be helpless to do anything. "
						+ "While this workaround will enable you to break the rules, it won't guarantee you any answers. Question "+new Integer(i).toString(), 100*i);
				allQuestions.add(longQ);
			}
		}
		
	}
	
	
	public void addQuestion(Question q){
		allQuestions.add(q);
	}
	
}
