package CHATTING;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WorkshopInfoServlet
 */
@WebServlet("/workshop_info")
public class WorkshopInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkshopInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ConnectDB connDB = ConnectDB.getConnectDB();
		
		String roomId = request.getParameter("roomId");
		System.out.println(roomId);
		String result = connDB.loadWorkshopInfo(roomId);
		System.out.println(result);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		
		if(result != null)
		{
			pw.write(result);
			pw.close();
		}
		else
		{
			System.out.println("공작소 정보 읽기 실패");
			pw.close();
		}
		
	}

}
