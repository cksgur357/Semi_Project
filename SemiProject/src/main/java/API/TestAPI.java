package API;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/api001.do")
public class TestAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jmCd = request.getParameter("jmCd");
		
//		if(jmCd.equals("정보기기운용기능사")) jmCd = "6892";
//		if(jmCd.equals("정보처리기능사")) jmCd = "6921";
//		if(jmCd.equals("방송통신기능사")) jmCd = "7730";
//		if(jmCd.equals("무선설비기능사")) jmCd = "6880";
//		if(jmCd.equals("전파전자통신기능사")) jmCd = "6893";
//		if(jmCd.equals("통신기기기능사")) jmCd = "7745";
//		if(jmCd.equals("통신선로기능사")) jmCd = "7720";
//		
//		// 전기 전자
//		if(jmCd.equals("전기기능사")) jmCd = "7780";
//		if(jmCd.equals("철도전기신호기능사")) jmCd = "6772";
//		if(jmCd.equals("광학기능사")) jmCd = "7671";
//		if(jmCd.equals("의료전자기능사")) jmCd = "6176";
//		if(jmCd.equals("자계산기기능사")) jmCd = "6801";
//		if(jmCd.equals("전자기기기능사")) jmCd = "6790";
//		if(jmCd.equals("전자캐드기능사")) jmCd = "6785";
		
		
		
		
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList"); /*URL*/
        
	 	// urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=RC4cq2tX1PneFFjBG0KselfdsOzkvvRb%2FNi%2B4S0slqPaNUFK%2F1vBHJttbIx4QyJ1pV57waitFnIKh3j8AZoTbQ%3D%3D"); /*Service Key*/
        // urlBuilder.append("&" + URLEncoder.encode("serviceKey","UTF-8") + "=" + URLEncoder.encode("-", "UTF-8")); /*공공데이터포털에서 받은 인증키*/
		urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=RC4cq2tX1PneFFjBG0KselfdsOzkvvRb%2FNi%2B4S0slqPaNUFK%2F1vBHJttbIx4QyJ1pV57waitFnIKh3j8AZoTbQ%3D%3D"); /*공공데이터포털에서 받은 인증키*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("dataFormat","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*응답 데이터 표준 형식 - xml / json (대소문자 구분 없음)*/
        urlBuilder.append("&" + URLEncoder.encode("implYy","UTF-8") + "=" + URLEncoder.encode("2021", "UTF-8")); /*시행년도*/
        urlBuilder.append("&" + URLEncoder.encode("qualgbCd","UTF-8") + "=" + URLEncoder.encode("T", "UTF-8")); /*자격구분코드 - T : 국가기술자격 - C : 과정평가형자격 - W : 일학습병행자격 - S : 국가전문자격*/
        urlBuilder.append("&" + URLEncoder.encode("jmCd","UTF-8") + "=" + URLEncoder.encode(jmCd, "UTF-8")); /*종목코드 값 (예) 7910 : 한식조리 기능사(검정형)*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json; charset=UTF-8");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        
        StringBuilder sb = new StringBuilder();
        String line;
        // int implSeq = sb.
              
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        	
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        response.setContentType("application/json; charset=UTF-8");
        new Gson().toJson(sb.toString(), response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
