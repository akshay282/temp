package CW2.application;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FakeCodeAcademyApplication {
	
	public static List<JSONObject> question_list = new ArrayList<JSONObject>();
	
	
	public static void main(String[] args) throws FileNotFoundException, IOException, ParseException {
		
		SpringApplication.run(FakeCodeAcademyApplication.class, args);
		getQuestions();
	}
	private static void getQuestions () throws FileNotFoundException, IOException, ParseException{
		ArrayList<String> result = new ArrayList<String>();
        search(".*\\.json", new File("src\\main\\resources\\static\\JSONs"), result );

        for (String s : result) {
       
            JSONObject json_file = (JSONObject) new JSONParser().parse(new FileReader(s)); 
              
            // getting questions 
            JSONArray questions = (JSONArray) json_file.get("questions"); 
            // iterating question array
            Iterator list_of_questions = questions.iterator(); 
            while (list_of_questions.hasNext()) { 
                JSONObject question_data =  (JSONObject) list_of_questions.next(); 
                question_list.add(question_data); 
            } 
        }
	
	}
	private static void search(final String pattern, final File folder, List<String> result) {
        for (final File f : folder.listFiles()) {

            if (f.isDirectory()) {
                search(pattern, f, result);
            }

            if (f.isFile()) {
                if (f.getName().matches(pattern)) {
                    result.add(f.getAbsolutePath());
                }
            }

        }
    }
	
		
		
		
}


	


