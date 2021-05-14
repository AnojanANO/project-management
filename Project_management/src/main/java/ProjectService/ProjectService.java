package ProjectService;


//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;


@Path("/ProjectService")
public class ProjectService {

	
	Project Obj = new Project();

	@GET
    @Path("/")
    @Produces(MediaType.TEXT_HTML)
	public String readItems(){
 
		return Obj.readProject();
 
	}
	
	@POST
	@Path("/") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertItems(@FormParam("Name") String Name,@FormParam("Description") String Description,@FormParam("Language") String Language,@FormParam("Developername") String Developername,@FormParam("Price") String Price) {
		
		String output = Obj.insertProject(Name, Description, Language, Developername, Price);
		return output;
	}
	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateItem(String ProjectData)
	{
	//Convert the input string to a JSON object
	 JsonObject Object = new JsonParser().parse(ProjectData).getAsJsonObject();
	//Read the values from the JSON object
	 String ID = Object.get("ID").getAsString();
	 String Name = Object.get("Name").getAsString();
	 String Description = Object.get("Description").getAsString();
	 String Language = Object.get("Language").getAsString();
	 String Developername = Object.get("Developername").getAsString();
	 String Price = Object.get("Price").getAsString();
	 String output = Obj.updateProject(ID, Name, Description, Language, Developername, Price);
	
	 return output;
	}
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteItem(String ProjectData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(ProjectData, "", Parser.xmlParser());

	//Read the value from the element <itemID>
	 String ID = doc.select("ID").text();
	 String output = Obj.deleteProject(ID);
	return output;
	}

}