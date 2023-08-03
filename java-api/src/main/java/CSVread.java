import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.io.FileWriter;
import java.io.BufferedWriter;

public class CSVread {
    public static <String> ArrayList<String> removeDuplicates(ArrayList<String> list) {

        // Create a new ArrayList
        ArrayList<String> newList = new ArrayList<String>();

        // Traverse through the first list
        for (String element : list) {

            // If this element is not present in newList
            // then add it
            if (!newList.contains(element)) {

                newList.add(element);
            }
        }

        // return the new list
        return newList;
    }

    public static void main(String[] args) {
        String line = "";
        String splitBy = ",";
        ArrayList<String> newbondholders = new ArrayList<String>();
        try {
//parsing a CSV file into BufferedReader class constructor
            BufferedReader br = new BufferedReader(new FileReader("C:\\work\\arrakis_v3\\java-api\\src\\main\\java\\db-bonds-data.csv"));
            ArrayList<String> bondholders = new ArrayList<String>();
            while ((line = br.readLine()) != null)   //returns a Boolean value
            {
                String[] employee = line.split(splitBy);    // use comma as separator
                int length = employee.length;
                bondholders.add(employee[length - 1].toLowerCase());
            }
            bondholders.remove(0);
            newbondholders = removeDuplicates(bondholders);
            System.out.println(newbondholders);
        } catch (IOException e) {
            e.printStackTrace();
        }
        ArrayList<String> email = new ArrayList<String>();
        ArrayList<String> password = new ArrayList<String>();
        for (int i = 0; i < newbondholders.size(); i++) {
            password.add("password");
        }
        email.add("azhold@gmail.com");
        email.add("acmeco@gmail.com");
        email.add("sovinvest@gmail.com");
        email.add("astrad@gmail.com");
        email.add("mungov@gmail.com");
        email.add("goldsachs@gmail.com");
        email.add("ubs@gmail.com");
        email.add("barclays@gmail.com");
        email.add("britel@gmail.com");
        email.add("penhold@gmail.com");
        email.add("zurpen@gmail.com");
        String sqldata = "";
        for (int i = 0; i < newbondholders.size(); i++) {
            sqldata = sqldata + "INSERT INTO users (email, password, bondHolder) VALUES ('" + email.get(i) + "', '" + password.get(i) + "', '" + newbondholders.get(i) + "');\n";
        }
        System.out.println(sqldata);
        // File path and name
        String filePath = "C:\\work\\arrakis_v3\\java-api\\src\\main\\resources\\data.sql";

        try {
            // Create a file writer
            FileWriter fileWriter = new FileWriter(filePath);

            // Wrap the writer in a buffered writer for better performance
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

            // Write SQL statements to the file
            bufferedWriter.write(sqldata);

            // Close the writers
            bufferedWriter.close();
            fileWriter.close();

            System.out.println("SQL file created successfully.");
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error creating the SQL file.");
        }
    }

}

