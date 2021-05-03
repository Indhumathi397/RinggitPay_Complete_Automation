package Utility;

import java.io.IOException;
import java.util.Properties;

public class ConfigFileReader {
    public String getReportConfigPath() throws IOException {
        PropertiesFileReader obj=new PropertiesFileReader();
        Properties properties = obj.getProperty();
        String reportConfigPath = properties.getProperty("reportConfigPath");
        if(reportConfigPath!= null)
            return reportConfigPath;
        else
            throw new RuntimeException("Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath");
    }
}
