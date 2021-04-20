package drvier.screenshot;

import com.intuit.karate.FileUtils;
import com.intuit.karate.driver.chrome.Chrome;

import java.io.File;
import java.util.Collections;

public class Test {
    public static void main(String[] args) {
        Chrome chrome = Chrome.startHeadless();
//        chrome.setLocation("https://github.com/login");
        byte[] bytes = chrome.pdf(Collections.EMPTY_MAP);
        FileUtils.writeToFile(new File("target/github.pdf"), bytes);
        bytes = chrome.screenshot();
        // this will attempt to capture the whole page, not just the visible part
        // bytes = chrome.screenshotFull();
        FileUtils.writeToFile(new File("target/github.png"), bytes);
        chrome.quit();
    }
}
