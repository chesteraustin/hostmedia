<!--- Create a new empty image. --->
<cfset imgText = ImageNew("",200,20,"argb")>
<!--- Set the background color to black. --->
<cfset ImageSetBackgroundColor(imgText, "black")>
<!--- Clear the rectangle specified on myImage with the background color specified for the image. --->
<cfset ImageClearRect(imgText,0,0,200,20)>
<!--- Turn on antialiasing to improve image quality. --->
<cfset ImageSetAntialiasing(imgText)>
<!--- Set the drawing color to green. --->
<cfset ImageSetDrawingColor(imgText,"green")>
<!--- Set the attributes of the text --->
<cfset textattribs = StructNew()>
<cfset textattribs.font="Arial">
<cfset textattribs.size = 15>
<cfset textattribs.style = "bolditalic">
<!--- Draw the text. --->
<cfset ImageDrawText(imgText, "#now()#", 10, 15, textattribs)>

<!--- Write da image. --->
<cfimage action="write" source="#imgText#">

<cfxml variable="imageXml">
	<cfimage action="write" source="#imgText#">
</cfxml>

<cfdump var="#imageXml#">
<cfset imageSrc = imageXml.img.xmlAttributes.src>


<hr />
<cfsavecontent variable="thisText">
<cfoutput>
<img src="file:///opt/coldfusion8/tmpCache/#imageSrc#"></img>
</cfoutput>
</cfsavecontent>


<cfdocument format="FlashPaper" localurl="true">
<cfoutput>
#thisText#
</cfoutput>
</cfdocument>
