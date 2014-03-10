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

<!--- Draw the text. --->
<cfset ImageDrawText(imgText, "#now()#", 10, 15)>

<!--- Write image. --->
<cfimage action="writeToBrowser" source="#imgText#">

<cfxml variable="imageXml">
	<cfimage action="writeToBrowser" source="#imgText#">
</cfxml>

<cfdump var="#imageXml#">
<cfset imageSrc = imageXml.img.xmlAttributes.src>


<hr />
<cfsavecontent variable="thisText">
<cfoutput>
<img src="#imageSrc#">
</cfoutput>
</cfsavecontent>


<cfdocument format="FlashPaper" localurl="false">
<cfoutput>
#thisText#
</cfoutput>
</cfdocument>