<cfinvoke component="crud" method="insert">
	<cfinvokeargument name="pumpDate" value="#dateFormat(now(), 'YYYY-MM-DD')#">
	<cfinvokeargument name="pumpTime" value="#timeFormat(now(), "short")#">
	<cfinvokeargument name="pumpUnit" value="mL">
	<cfinvokeargument name="leftSide" value="0">
	<cfinvokeargument name="rightSide" value="0">
	<cfinvokeargument name="storageLocation" value="freezer bag">
</cfinvoke>

<h1>CRUD Insert 1 completed</h1>

<cfinvoke component="crud" method="insert">
	<cfinvokeargument name="pumpDate" value="#dateFormat(now(), 'YYYY-MM-DD')#">
	<cfinvokeargument name="pumpTime" value="#timeFormat(now(), "short")#">
	<cfinvokeargument name="pumpUnit" value="mL">
	<cfinvokeargument name="leftSide" value="0">
	<cfinvokeargument name="rightSide" value="0">
	<cfinvokeargument name="storageLocation" value="freezer bag">
</cfinvoke>

<h1>CRUD Insert 2 completed</h1>

<cfinvoke component="crud" method="insert">
	<cfinvokeargument name="pumpDate" value="#dateFormat(now(), 'YYYY-MM-DD')#">
	<cfinvokeargument name="pumpTime" value="#timeFormat(now(), "short")#">
	<cfinvokeargument name="pumpUnit" value="mL">
	<cfinvokeargument name="leftSide" value="0">
	<cfinvokeargument name="rightSide" value="0">
	<cfinvokeargument name="storageLocation" value="freezer bag">
</cfinvoke>

<h1>CRUD Insert 3 completed</h1>

<cfinvoke component="crud" method="update">
	<cfinvokeargument name="pumpID" value="1"> 
	<cfinvokeargument name="pumpDate" value="#dateFormat(now(), 'YYYY-MM-DD')#">
	<cfinvokeargument name="pumpTime" value="#timeFormat(now(), "short")#">
	<cfinvokeargument name="pumpUnit" value="oz">
	<cfinvokeargument name="leftSide" value="5">
	<cfinvokeargument name="rightSide" value="5">
	<cfinvokeargument name="storageLocation" value="bottle">
</cfinvoke>

<h1>CRUD Update completed</h1>

<cfinvoke component="crud" method="delete">
	<cfinvokeargument name="pumpID" value="3"> 
</cfinvoke>

<h1>CRUD Delete completed</h1>

<cfinvoke component="search" method="generalSearch" returnvariable="generalSearch">
</cfinvoke>
<cfdump var="#generalSearch#">
<h1>Search completed</h1>
