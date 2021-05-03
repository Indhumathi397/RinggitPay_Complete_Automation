package Utility;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class PropertiesFileReader {
    public Properties getProperty() throws IOException {
        FileInputStream inputStream=null;
        Properties properties=new Properties();
        try{
            properties.load(new FileInputStream("resources/data.properties"));

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return properties;
    }
}
