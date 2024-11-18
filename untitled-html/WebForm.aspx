<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebApplication3.WebForm" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net"%>
<%@ Import Namespace="System.Xml" %>
<!DOCTYPE html>
<html lang="english" xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>exported project</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />

    <style data-tag="reset-style-sheet">
      html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6,figure,blockquote,figcaption {  margin: 0;  padding: 0;}button {  background-color: transparent;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button:-moz-focus,[type="button"]:-moz-focus,[type="reset"]:-moz-focus,[type="submit"]:-moz-focus {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}html { scroll-behavior: smooth  }
    </style>
    <style data-tag="default-style-sheet">
      html {
        font-family: Inter;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style:normal;
        text-decoration: none;
        text-transform: none;
        letter-spacing: normal;
        line-height: 1.15;
        color: var(--dl-color-theme-neutral-dark);
        background: var(--dl-color-theme-neutral-light);

        fill: var(--dl-color-theme-neutral-dark);
      }
    </style>
    <link
      rel="stylesheet"
      href="https://unpkg.com/animate.css@4.1.1/animate.css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
      data-tag="font"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=STIX+Two+Text:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;display=swap"
      data-tag="font"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
      data-tag="font"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
      data-tag="font"
    />
    <link
      rel="stylesheet"
      href="https://unpkg.com/@teleporthq/teleport-custom-scripts/dist/style.css"
    />
  </head>
  <body>
      <form id="form1" runat="server" method="post">
      <link rel="stylesheet" href="./style.css" />
      <div>
          <link href="./index.css" rel="stylesheet" />

          <div class="mac-book-air1-container">
              <div class="mac-book-air1-mac-book-air1">
                  <div class="mac-book-air1-mainapp">
                      <div class="mac-book-air1-component2">
                          <div class="mac-book-air1-component1">
                              <img alt="Rectangle1I980"
                                   src="public/external/rectangle1i980-gp9f-800w.png"
                                   class="mac-book-air1-rectangle1" />
                              <img alt="BarsI980"
                                   src="public/external/barsi980-gmis.svg"
                                   class="mac-book-air1-bars" />
                          </div>
                          <span class="mac-book-air1-text10">
                              <span>Company information retriever Ver 0.4b</span>
                          </span>
                          <!-- The submit button and the reset button box is deleted. I will try to use CSS instead of using blank images as it cannot be moved around. (phuc.quach) -->
                          <img alt="Rectangle2I980"
                               src="public/external/rectangle2i980-d6x-200h.png"
                               class="mac-book-air1-rectangle24" />
                          <img alt="Rectangle2I980"
                               src="public/external/rectangle2i980-0fm-200h.png"
                               class="mac-book-air1-rectangle25" />
                          <img alt="Rectangle2I980"
                               src="public/external/rectangle2i980-idbe-200h.png"
                               class="mac-book-air1-rectangle26" />
                          <span class="mac-book-air1-text12">
                              <span>Business Line</span> <!-- Select bar for the companies, ps. Thanks for group 6's idea for the select bar! I highly appreciate your work (phuc.quach) -->
                              <!-- The select bar has been deprecated. As I found that the business line is accessed through a code which goes from 00000 (or 0) to 99900, I felt that the need of a select bar is not needed. (phuc.quach) -->
                              <!-- However I will try to make another version with the drop down list, I hope that would work. (phuc.quach) -->
                                <input type="text" name="business-line" class="business-line" placeholder="From 00000-99900" value="<%=IsPostBack && Request.Form["resetButton"] == null ? (Request.Form["businessline"]) : "" %>"  style="border-radius: 5px; padding-top: 20px; padding-right: 0px; width: 280px;">
                                </div>
                          </span>
                          <span class="mac-book-air1-text14"> <!-- Number of results, start and end date -->
                              <span>Time end</span>
                                  <input type="text" name="end" class="end" placeholder="yyyy-dd-mm" value="<% =IsPostBack && Request.Form["resetButton"] == null ? Convert.ToString(Request.Form["end"]) : "" %>" style="border-radius: 5px; padding-top: 20px; padding-right: 0px; width: 200px;">
                          </span>
                          <span class="mac-book-air1-text16">
                              <span>Max results</span>
                                  <input type="number" name="num_results" class="num_results" placeholder="Type here..." value="<%=IsPostBack && Request.Form["resetButton"] == null ? (Request.Form["num_results"]) : "" %>" min="1" max="5" style="border-radius: 5px; padding-top: 20px; padding-right: 0px; width: 180px;">
                          </span>
                          <span class="mac-book-air1-text18">
                              <span>Time start</span>
                                  <input type="text" name="start" class="start" placeholder="yyyy-mm-dd" value="<% =IsPostBack && Request.Form["resetButton"] == null ? Convert.ToString(Request.Form["start"]) : "" %>" style="border-radius: 5px; padding-top: 20px; padding-right: 0px; width: 200px;">
                          </span>

                          <span class="mac-book-air1-text20"> <!-- Rudimentary submit and reset button, changed from reference from the friend team, changed the layout -->
                                <button class="button" type="submit" style="border-radius: 5px; background-color: #DBEEF7; width: 180px; height: 50px;">Submit?</button>
                                <h6 style="color: whitesmoke">LEAVE BLANK FOR ALL RESULTS</h6>
                          </span>
                          <span class="mac-book-air1-text22">
                               <button class="button button-reset" type="submit" name="resetButton" style="border-radius: 5px; background-color: #F49595; width: 180px; height: 50px;">Reset</button>
                          </span>
                          <div class="mac-book-air1-frame1">   
                              <span class="mac-book-air1-text24"><span>City</span>
                                  <input type="text" name="city" class="city" value="<% =IsPostBack && Request.Form["resetButton"] == null ? Convert.ToString(Request.Form["city"]) : "" %>" placeholder="Type here..." style="border-radius: 5px; padding-top: 20px; padding-right: 0px; width: 180px;">
                              </span>
                          </div>
                      </div>
                  </div>
                 <table class="fetch-results">
                             <caption hidden>
                                 Retriever search results
                             </caption>
                             <thead>
                                 <tr>
                                     <th scope="col">Number of Companies</th>
                                     <th scope="col">Business ID</th>
                                     <th scope="col">Name</th>
                                     <th scope="col">Address</th>
                                 </tr>
                             </thead>
                             <tbody>
                                  
                           <%
                                    string line = Request.Form["business-line"];
                                    string start = Request.Form["start"];
                                    string city = Request.Form["city"];
                                    string end = Request.Form["end"];
                                    string num_results = Request.Form["num_results"];

                                    if (Request.Form["resetButton"] != null)
                                    {
                                        line = "";
                                        start = "";
                                        city = "";
                                        end = "";
                                        Response.Write("Please type into the parameters.");
                                    }

                                    if (Request.Form["resetButton"] == null && Request.Form["business-line"] != null && Request.Form["start"] != null && Request.Form["city"] != null && Request.Form["end"] != null)
                                    {
                                        Response.Write("The parameters are: " + line + ", " + start + ", " + city + ", " + end + ", " + num_results + "\n");

                                        // Thank god that there was a StackOverflow topic on how to make a URL. 
                                        // so yeah that's one way of creating a URL (phuc.quach)

                                        // somehow this part is empty, I will think of a use for this soon.
                                        

                                        
                                        //Now this string includes all data from the external web site for further use

                                    }

                                    // Create a new 'Uri' object with the specified string.

                                    // Guys I heard that this method of getting a HTTP GET/POST is not supported anymore. I am thinking of using another method which I will try to implement soon.
                                    // Anyways this shit totally works.
                                    System.Uri uri = new System.Uri("https://avoindata.prh.fi/opendata-ytj-api/v3/companies?location=" + city + "&mainBusinessLine=" + line + "&registrationDateStart=" + start + "&registrationDateEnd=" + end);
                                    StringWriter writer = new StringWriter();
                                    WebRequest myRequest = WebRequest.Create(uri);
                                    WebResponse response = myRequest.GetResponse();
                                    // Get the stream containing content returned by the server.
                                    Stream dataStream = response.GetResponseStream();
                                    // Open the stream using a StreamReader for easy access.
                                    StreamReader reader = new StreamReader(dataStream);
                                    // Read the content.
                                    string responseFromServer = reader.ReadToEnd();

                                    //  HUGE thanks to Aleksi for the code to make the data table. I was about to cry all night long as I was so stressed out with every other classes I have right now
                                    //  and this is just a lifesaver for me. 
                                    //  Once again, thank you so much! Feel free to ask me to get you a cup of coffee soon. (phuc.quach)

                                    
                                    int maxResult;

                                    if (Request["num_results"] != null)
                                    {
                                        maxResult = Convert.ToInt32(Request["num_results"]);
                                    }
                                    else
                                    {
                                        maxResult = 0;
                                    }

                                    // create array of arrays )) other words array of companies which each has array of data about company

                                    string[][] companies = new string[maxResult][];

                                    //create as much companies as we will parse according user's entered input
                                    for (int i = 0; i < maxResult; i++)
                                    {
                                        companies[i] = new string[3]; // Each array will hold [businessId, name, address], that why 3
                                    }

                                    int currentIndex = 0; // Need for starting parsing from the beginning

                                    //start parse
                                    for (int i = 0; i < maxResult; i++)
                                    {
                                        // Extract "businessId"    

                                        int businessIdIndex = responseFromServer.IndexOf("businessId", currentIndex); // find index of key word-businessId

                                        if (businessIdIndex != -1) // -1 simple words means we didn't find what we want, here we sure that we found, below we give solution what to do if no
                                        {
                                            int startIndex = responseFromServer.IndexOf("\"value\":", businessIdIndex) + 8; // find index second keyword Value and + 8 because "value": -8 symbols
                                            int endIndex = responseFromServer.IndexOf(',', startIndex); // find index until which key word we will take value, in this case it is commma
                                            companies[i][0] = responseFromServer.Substring(startIndex, endIndex - startIndex).Trim('\"'); // take value between last symbols in "value": and until comma, receive business ID in "", trim "", and put it in 1 company in 1 value of array
                                            currentIndex = endIndex; // Move the currentIndex, therefore now we start not from very beggining from where we stoped from comma


                                            // same way parse name of company
                                            int nameIndex = responseFromServer.IndexOf("name", currentIndex);

                                            startIndex = responseFromServer.IndexOf("\"name\":", nameIndex) + 7;
                                            endIndex = responseFromServer.IndexOf(',', startIndex);
                                            companies[i][1] = responseFromServer.Substring(startIndex, endIndex - startIndex).Trim('\"');
                                            currentIndex = endIndex; // again move the currentIndex forward


                                            // parse "street" and "buildingNumber" for address
                                            int streetIndex = responseFromServer.IndexOf("street", currentIndex);

                                            startIndex = responseFromServer.IndexOf("\"street\":", streetIndex) + 9;
                                            endIndex = responseFromServer.IndexOf(',', startIndex);
                                            string street = responseFromServer.Substring(startIndex, endIndex - startIndex).Trim('\"');

                                            int buildingNumberIndex = responseFromServer.IndexOf("buildingNumber", endIndex);

                                            startIndex = responseFromServer.IndexOf("\"buildingNumber\":", buildingNumberIndex) + 17;
                                            endIndex = responseFromServer.IndexOf(',', startIndex);
                                            string buildingNumber = responseFromServer.Substring(startIndex, endIndex - startIndex).Trim('\"');

                                            companies[i][2] = $"{street} {buildingNumber}"; // Combine street and building number
                                            currentIndex = endIndex; // Move the currentIndex forward for next itteration. Here we completed 1 company, since we have loop it start forward to fill next company

                                        }
                                        else // here we difine what to do if we recievied -1 (in fact error response from our request). I don't like this solution, but it takes time to find more proffesional. Maybe next time))
                                        {

                                %>
                                <div style="color: red; transform: translateY(-117px);">Either not found or incorrect city name.</div>
                                <%
                                            return;
                                        }

                                    }

                                    // now just check if input city filled and reset button not pushed
                                    if (Request["city"] != "" && Request.Form["resetButton"] == null)
                                    {
                                        // and fill our table as many rows as we have companies according user's input max results to show
                                        for (int i = 0; i < maxResult; i++)
                                        {
                                %>
                                <tr>
                                    <td><%= i + 1 %></td>
                                                    <!-- i-# of company from companie's array; 0,1,2 value of array of company (id,name,adress) -->
                                    <td><%= companies[i][0]%></td>
                                    <td><%= companies[i][1]%></td>
                                    <td><%= companies[i][2]%></td>

                                </tr>
                                <%
                                        }
                                    }

                                %>
                                <%
                                    else // if field City empty give prompt to user
                                    {
                                %>
                                <tr>
                                    <td></td>
                                    <td></td>

                                    <td style="color: red;"><%="Please enter city."%></td>
                                    <td></td>

                                </tr>
                                <%
                                    }
                                %>
                             </tbody>
                         </table>

                  <div class="mac-book-air1-footer1" style="margin-top: 300px;">
                      <img alt="footer9257"
                           src="public/external/footer9257-hl9.svg"
                           class="mac-book-air1-footer2" />
                      <span class="mac-book-air1-text26"> <!-- Footer -->
                          <span>testing testing</span>
                      </span>
                  </div>
              </div>
          </div>
     </form>
  </body>
</html>
