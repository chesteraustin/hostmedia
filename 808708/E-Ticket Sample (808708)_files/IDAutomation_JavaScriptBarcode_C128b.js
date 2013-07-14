//********************************************************************
//  Native JavaScript Barcode Generator Version 2007.04
//  Copyright © 2006-2007 IDAutomation.com, Inc. All rights reserved.
//  Portions of this source code and process are Patent Pending.
//
//  You may incorporate this Source Code in your application
//  only if you own a valid license from IDAutomation.com, Inc.
//  for the associated product and the copyright notices and
//  this text are not removed from the source code.
//
//  Online Tutorial: www.idautomation.com/javascript/
//
//  Distributing this source code outside your
//  organization requires a Developer License.
//********************************************************************
function IDAutomation_JavaScriptBarcode_C128b(DataToEncode,BarHeight,XDimensionPoints){if(BarHeight==null){BarHeight=8;}if(XDimensionPoints==null){XDimensionPoints=4;}var v=XDimensionPoints;var g="";if(DataToEncode=="")return "";if(DataToEncode.length==0)return "";var d="";var t=["EFF","FEF","FFE","BBG","BCF","CBF","BFC","BGB","CFB","FBC","FCB","GBB","AFJ","BEJ","BFI","AJF","BIF","BJE","FJA","FAJ","FBI","EJB","FIB","IEI","IBF","JAF","JBE","IFB","JEB","JFA","EEG","EGE","GEE","ACG","CAG","CCE","AGC","CEC","CGA","ECC","GAC","GCA","AEK","AGI","CEI","AIG","AKE","CIE","IIE","ECI","GAI","EIC","EKA","EII","IAG","ICE","KAE","IEC","IGA","KEA","IMA","FDA","OAA","ABH","ADF","BAH","BDE","DAF","DBE","AFD","AHB","BED","BHA","DEB","DFA","HBA","FAD","MIA","HAB","CMA","ABN","BAN","BBM","ANB","BMB","BNA","MBB","NAB","NBA","EEM","EME","MEE","AAO","ACM","CAM","AMC","AOA","MAC","MCA","AIM","AMI","IAM","MAI","EDB","EBD","EBJ"];var m=104;var A=0;var k=0;var i;d=t[104];for(i=0;i<DataToEncode.length;i++){var c=parseInt((DataToEncode.charCodeAt(i))-32);var f=c*(i+1);if(c<=106&&c>=0){m+=f;d+=t[c];}}var r=(m%103);d+=t[r];d+="GIAH";g=n(d,BarHeight);if(XDimensionPoints!=0){g="<div style='font-size:"+XDimensionPoints+"px;line-height:"+v+"px;font-family:'Courier New', 'Lucida Console', 'monospace';'><pre>"+g+"</pre></div>";}return g;};function n(o,BarHeight){if(BarHeight<1||BarHeight>40)BarHeight=6;w=false;var e="";var g="";k=o.length;for(I=0;I<k;I++){c=o.charCodeAt(I);if(c>=65&&c<=68)e=e+(11+(c-65));if(c>=69&&c<=72)e=e+(21+(c-69));if(c>=73&&c<=76)e=e+(31+(c-73));if(c>=77&&c<=80)e=e+(41+(c-77));if(c>=87&&c<=88)e=e+(11+(c-87));if(c>=89&&c<=90)e=e+(21+(c-89));}var l=3;var ww=String.fromCharCode(32);var wb=String.fromCharCode(9616);var bw=String.fromCharCode(9612);var bb=String.fromCharCode(9608);f=0;d="";var j=0;var J=0;k=e.length-1;for(I=0;I<k;I++){f=e.charCodeAt(I)-48;if(j==1){if(f>1){f=f-1;j=0;}else{j=1;}}if((j==1)&&(f==1)){j=0;}else{for(J=1;J<=f;J++){if(J==f){j=1;if(l==3){d=d+bw;}if(l==1){d=d+wb;}}else{j=0;if(l==3){d=d+bb;}if(l==1){d=d+ww;}J++;}}}l=4-l;}for(I=1;I<BarHeight;I++){g=g+d+String.fromCharCode(13);}return g;} 