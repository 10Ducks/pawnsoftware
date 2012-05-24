package pawnsoft;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import java.io.IOException;
import java.util.Date;
import java.util.logging.Logger;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class NewCustomerServlet extends HttpServlet {
	@SuppressWarnings("unused")
	private static final Logger log = Logger.getLogger(PawnsoftServlet.class.getName()); 
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserService userService = UserServiceFactory.getUserService();
        @SuppressWarnings("unused")
		User user = userService.getCurrentUser();
        
        String company = "Cindy";
        Key customerKey = KeyFactory.createKey("Customers",company);
        String license = req.getParameter("license");
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String issued = req.getParameter("issued");
        String birthdate = req.getParameter("birthdate");
        String address = req.getParameter("address");
        String cityStateZip = req.getParameter("cityStateZip");
        String sex = req.getParameter("sex");
        String hair = req.getParameter("hair");
        String eyes = req.getParameter("eyes");
        String height = req.getParameter("height");
        String weight = req.getParameter("weight");
        String race = req.getParameter("race");
        Date createDate = new Date();
        
        Entity customer = new Entity("Customers",customerKey);
        customer.setProperty("license",license);
        customer.setProperty("firstname",firstname);
        customer.setProperty("lastname",lastname);
        customer.setProperty("issued",issued);
        customer.setProperty("birthdate", birthdate);
        customer.setProperty("address",address);
        customer.setProperty("cityStateZip",cityStateZip);
        customer.setProperty("sex",sex);
        customer.setProperty("hair",hair);
        customer.setProperty("eyes",eyes);
        customer.setProperty("height",height);
        customer.setProperty("weight",weight);
        customer.setProperty("race",race);
        customer.setProperty("createDate",createDate);
        
        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(customer);
        
        resp.sendRedirect("/pawnsoft.jsp");
	}
}