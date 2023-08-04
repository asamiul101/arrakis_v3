import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.security.SecureRandom;
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

    public static String generateRandomPassword(int len)
    {
        // ASCII range – alphanumeric (0-9, a-z, A-Z)
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder();

        // each iteration of the loop randomly chooses a character from the given
        // ASCII range and appends it to the `StringBuilder` instance

        for (int i = 0; i < len; i++)
        {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }

        return sb.toString();
    }

    public static void main(String[] args) {
        String line = "";
        String splitBy = ",";
        ArrayList<String> newbondholders = new ArrayList<String>();
        ArrayList<String> book_name= new ArrayList<String>();
//        ArrayList<String> type= new ArrayList<String>();
//        ArrayList<String> cusip= new ArrayList<String>();
        try {
//parsing a CSV file into BufferedReader class constructor
            BufferedReader br = new BufferedReader(new FileReader("C:\\work\\arrakis_v3\\java-api\\src\\main\\java\\db-bonds-data.csv"));
            ArrayList<String> bondholders = new ArrayList<String>();
            while ((line = br.readLine()) != null)   //returns a Boolean value
            {
                String[] table = line.split(splitBy);    // use comma as separator
                int length = table.length;
                bondholders.add(table[length - 1].toLowerCase());
                book_name.add(table[length-2].toLowerCase());
//                type.add(table[length-3]);
//                cusip.add(table[9]);

            }
            //System.out.println(cusip);
            bondholders.remove(0);
            book_name.remove(0);
            newbondholders = removeDuplicates(bondholders);
            book_name=removeDuplicates(book_name);
//            System.out.println(book_name);
//            System.out.println(newbondholders);
        } catch (IOException e) {
            e.printStackTrace();
        }
        ArrayList<String> password = new ArrayList<String>();
        //generateRandomPassword passwords=new generateRandomPassword(8);
        for (int i = 0; i < newbondholders.size(); i++) {
            password.add(generateRandomPassword(8));
        }
        System.out.println(password);

        String sqldata = "";
        for (int i = 0; i < newbondholders.size(); i++) {
            sqldata = sqldata + "INSERT INTO users (password, bond_holder) VALUES ('" + password.get(i) + "', '" + newbondholders.get(i) + "');\n";
        }
        for (int i = 0; i < book_name.size(); i++) {
            sqldata = sqldata+ "INSERT INTO book (name) VALUES ('" + book_name.get(i) +"');\n";
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

