package web.controller.file;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.FileDao;
import web.service.FileService;
import web.service.FileServiceImpl;

/**
 * Servlet implementation class ImgListServlet
 */
@WebServlet("/ImgListServlet")
public class ImgListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FileService fileService;
	
	
	@Override
		public void init(ServletConfig config) throws ServletException {
			ServletContext servletContext = config.getServletContext();
			fileService = new FileServiceImpl((FileDao)servletContext.getAttribute("fileDao"));
		}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("imgList", fileService.getImgListAll());
		request.setAttribute("realPath", request.getServletContext().getRealPath("/JspStudy_7896/static/fileupload"));
		request.getRequestDispatcher("/WEB-INF/views/file/img-list.jsp").forward(request, response);
	}

}
