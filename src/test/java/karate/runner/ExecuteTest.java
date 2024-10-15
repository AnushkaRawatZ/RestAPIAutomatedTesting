package karate.runner;
import com.intuit.karate.Runner;
//import statements

public class ExecuteTest {
    public static void main(String [] args){
        Runner.path("src/test/java/karate/api").parallel(1);
    }
}
