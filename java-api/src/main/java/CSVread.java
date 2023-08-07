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
        ArrayList<String> issuer_name = new ArrayList<String>();
        ArrayList<String> isin = new ArrayList<String>();
        ArrayList<String> cusip = new ArrayList<String>();
        ArrayList<String> issuername = new ArrayList<String>();
        ArrayList<String> maturity_date = new ArrayList<String>();
        ArrayList<String> coupon = new ArrayList<String>();
        ArrayList<String> type = new ArrayList<String>();
        ArrayList<String> face_value = new ArrayList<String>();
        ArrayList<String> currency = new ArrayList<String>();
        ArrayList<String> status = new ArrayList<String>();
        ArrayList<String> trade_date = new ArrayList<String>();
        ArrayList<String> settlement_date = new ArrayList<String>();
        ArrayList<String> quantity = new ArrayList<String>();
        ArrayList<String> unit_price = new ArrayList<String>();
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
                issuer_name.add(table[12]);
                issuername.add(table[12]);
                isin.add(table[11]);
                cusip.add(table[9]);
                maturity_date.add(table[13]);
                coupon.add(table[7]);
                type.add(table[0]);
                face_value.add(table[10]);
                currency.add(table[8]);
                status.add(table[4]);
                trade_date.add(table[5]);
                settlement_date.add(table[3]);
                unit_price.add(table[6]);
                quantity.add(table[2]);
//                type.add(table[length-3]);
//                cusip.add(table[9]);

            }
            System.out.println(issuer_name);
            issuer_name.remove(0);
            System.out.println(issuer_name);
            bondholders.remove(0);
            book_name.remove(0);
            isin.remove(0);
            cusip.remove(0);
            issuername.remove(0);
            maturity_date.remove(0);
            coupon.remove(0);
            type.remove(0);
            face_value.remove(0);
            currency.remove(0);
            status.remove(0);
            trade_date.remove(0);
            settlement_date.remove(0);
            unit_price.remove(0);
            quantity.remove(0);
            newbondholders = removeDuplicates(bondholders);
            book_name=removeDuplicates(book_name);
            issuer_name=removeDuplicates(issuer_name);


//            System.out.println(book_name);
//            System.out.println(newbondholders);
        } catch (IOException e) {
            e.printStackTrace();
        }
        ArrayList<String> password = new ArrayList<String>();
        for (int i = 0; i < newbondholders.size(); i++) {
            password.add(generateRandomPassword(8));
        }
        System.out.println(password);

        String sqldata = "";
        for (int i = 0; i < newbondholders.size(); i++) {
            sqldata = sqldata + "INSERT INTO users (password, bond_holder) VALUES ('" + password.get(i) + "', '" + newbondholders.get(i) + "');\n";
        }
        for (int i = 0; i < book_name.size(); i++) {
            sqldata = sqldata+ "INSERT INTO book (book_name) VALUES ('" + book_name.get(i) +"');\n";
        }
        for (int i = 0; i < issuer_name.size(); i++) {
            sqldata = sqldata+ "INSERT INTO counterparty (name) VALUES ('" + issuer_name.get(i) +"');\n";
        }
        for (int i = 0; i < isin.size(); i++) {
            sqldata = sqldata+ "INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('" + isin.get(i) +"', '"+ cusip.get(i) +"', '"+ issuername.get(i) +"', '"+ maturity_date.get(i) +"','"+ coupon.get(i) +"','"+ type.get(i) +"','"+ face_value.get(i) +"','"+ currency.get(i) +"','"+ status.get(i) +"');\n";
        }
        for (int i = 0; i < trade_date.size(); i++) {
            sqldata = sqldata+ "INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('" + trade_date.get(i) +"', '"+ settlement_date.get(i) +"', '"+ unit_price.get(i) +"', '"+ quantity.get(i) +"');\n";
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

