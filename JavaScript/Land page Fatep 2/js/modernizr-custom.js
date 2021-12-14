/*! modernizr 3.5.0 (Custom Build) | MIT *
 * https://modernizr.com/download/?-apng-audio-backgroundblendmode-backgroundsize-bgpositionshorthand-bgpositionxy-bgrepeatspace_bgrepeatround-bgsizecover-borderimage-borderradius-boxshadow-boxsizing-canvas-capture-checked-contextmenu-cookies-cssanimations-csscalc-csscolumns-cssexunit-cssfilters-cssgradients-cssgrid_cssgridlegacy-cssinvalid-cssremunit-cssscrollbar-csstransforms-csstransforms3d-csstransformslevel2-csstransitions-cssvalid-cssvmaxunit-cssvminunit-dataview-displaytable-fileinput-flash-flexbox-flexboxlegacy-flexboxtweener-fontface-formattribute-hiddenscroll-hsla-ie8compat-input-inputtypes-lastchild-mediaqueries-multiplebgs-nthchild-olreversed-opacity-overflowscrolling-placeholder-preserve3d-requestautocomplete-siblinggeneral-svg-target-textareamaxlength-textshadow-unicode-userselect-video-wrapflow-setclasses !*/
!function(e,t,n){function r(e,t){return typeof e===t}function i(){var e,t,n,i,o,a,s;for(var d in A)if(A.hasOwnProperty(d)){if(e=[],t=A[d],t.name&&(e.push(t.name.toLowerCase()),t.options&&t.options.aliases&&t.options.aliases.length))for(n=0;n<t.options.aliases.length;n++)e.push(t.options.aliases[n].toLowerCase());for(i=r(t.fn,"function")?t.fn():t.fn,o=0;o<e.length;o++)a=e[o],s=a.split("."),1===s.length?Modernizr[s[0]]=i:(!Modernizr[s[0]]||Modernizr[s[0]]instanceof Boolean||(Modernizr[s[0]]=new Boolean(Modernizr[s[0]])),Modernizr[s[0]][s[1]]=i),T.push((i?"":"no-")+s.join("-"))}}function o(e){var t=C.className,n=Modernizr._config.classPrefix||"";if(k&&(t=t.baseVal),Modernizr._config.enableJSClass){var r=new RegExp("(^|\\s)"+n+"no-js(\\s|$)");t=t.replace(r,"$1"+n+"js$2")}Modernizr._config.enableClasses&&(t+=" "+n+e.join(" "+n),k?C.className.baseVal=t:C.className=t)}function a(){return"function"!=typeof t.createElement?t.createElement(arguments[0]):k?t.createElementNS.call(t,"http://www.w3.org/2000/svg",arguments[0]):t.createElement.apply(t,arguments)}function s(){var e=t.body;return e||(e=a(k?"svg":"body"),e.fake=!0),e}function d(e,t){return!!~(""+e).indexOf(t)}function l(e,t){return e-1===t||e===t||e+1===t}function c(t,n,r){var i;if("getComputedStyle"in e){i=getComputedStyle.call(e,t,n);var o=e.console;if(null!==i)r&&(i=i.getPropertyValue(r));else if(o){var a=o.error?"error":"log";o[a].call(o,"getComputedStyle returning null, its possible modernizr test results are inaccurate")}}else i=!n&&t.currentStyle&&t.currentStyle[r];return i}function u(e,t){if("object"==typeof e)for(var n in e)L(e,n)&&u(n,e[n]);else{e=e.toLowerCase();var r=e.split("."),i=Modernizr[r[0]];if(2==r.length&&(i=i[r[1]]),"undefined"!=typeof i)return Modernizr;t="function"==typeof t?t():t,1==r.length?Modernizr[r[0]]=t:(!Modernizr[r[0]]||Modernizr[r[0]]instanceof Boolean||(Modernizr[r[0]]=new Boolean(Modernizr[r[0]])),Modernizr[r[0]][r[1]]=t),o([(t&&0!=t?"":"no-")+r.join("-")]),Modernizr._trigger(e,t)}return Modernizr}function p(e,n,r,i){var o,d,l,c,u="modernizr",p=a("div"),f=s();if(parseInt(r,10))for(;r--;)l=a("div"),l.id=i?i[r]:u+(r+1),p.appendChild(l);return o=a("style"),o.type="text/css",o.id="s"+u,(f.fake?f:p).appendChild(o),f.appendChild(p),o.styleSheet?o.styleSheet.cssText=e:o.appendChild(t.createTextNode(e)),p.id=u,f.fake&&(f.style.background="",f.style.overflow="hidden",c=C.style.overflow,C.style.overflow="hidden",C.appendChild(f)),d=n(p,e),f.fake?(f.parentNode.removeChild(f),C.style.overflow=c,C.offsetHeight):p.parentNode.removeChild(p),!!d}function f(e){return e.replace(/([a-z])-([a-z])/g,function(e,t,n){return t+n.toUpperCase()}).replace(/^-/,"")}function h(e,t){return function(){return e.apply(t,arguments)}}function m(e,t,n){var i;for(var o in e)if(e[o]in t)return n===!1?e[o]:(i=t[e[o]],r(i,"function")?h(i,n||t):i);return!1}function g(e){return e.replace(/([A-Z])/g,function(e,t){return"-"+t.toLowerCase()}).replace(/^ms-/,"-ms-")}function v(t,r){var i=t.length;if("CSS"in e&&"supports"in e.CSS){for(;i--;)if(e.CSS.supports(g(t[i]),r))return!0;return!1}if("CSSSupportsRule"in e){for(var o=[];i--;)o.push("("+g(t[i])+":"+r+")");return o=o.join(" or "),p("@supports ("+o+") { #modernizr { position: absolute; } }",function(e){return"absolute"==c(e,null,"position")})}return n}function y(e,t,i,o){function s(){c&&(delete $.style,delete $.modElem)}if(o=r(o,"undefined")?!1:o,!r(i,"undefined")){var l=v(e,i);if(!r(l,"undefined"))return l}for(var c,u,p,h,m,g=["modernizr","tspan","samp"];!$.style&&g.length;)c=!0,$.modElem=a(g.shift()),$.style=$.modElem.style;for(p=e.length,u=0;p>u;u++)if(h=e[u],m=$.style[h],d(h,"-")&&(h=f(h)),$.style[h]!==n){if(o||r(i,"undefined"))return s(),"pfx"==t?h:!0;try{$.style[h]=i}catch(y){}if($.style[h]!=m)return s(),"pfx"==t?h:!0}return s(),!1}function x(e,t,n,i,o){var a=e.charAt(0).toUpperCase()+e.slice(1),s=(e+" "+V.join(a+" ")+a).split(" ");return r(t,"string")||r(t,"undefined")?y(s,t,i,o):(s=(e+" "+U.join(a+" ")+a).split(" "),m(s,t,n))}function b(e,t,r){return x(e,n,n,t,r)}var T=[],A=[],w={_version:"3.5.0",_config:{classPrefix:"",enableClasses:!0,enableJSClass:!0,usePrefixes:!0},_q:[],on:function(e,t){var n=this;setTimeout(function(){t(n[e])},0)},addTest:function(e,t,n){A.push({name:e,fn:t,options:n})},addAsyncTest:function(e){A.push({name:null,fn:e})}},Modernizr=function(){};Modernizr.prototype=w,Modernizr=new Modernizr,Modernizr.addTest("cookies",function(){try{t.cookie="cookietest=1";var e=-1!=t.cookie.indexOf("cookietest=");return t.cookie="cookietest=1; expires=Thu, 01-Jan-1970 00:00:01 GMT",e}catch(n){return!1}}),Modernizr.addTest("dataview","undefined"!=typeof DataView&&"getFloat64"in DataView.prototype),Modernizr.addTest("ie8compat",!e.addEventListener&&!!t.documentMode&&7===t.documentMode),Modernizr.addTest("svg",!!t.createElementNS&&!!t.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect),Modernizr.addTest("target",function(){var t=e.document;if(!("querySelectorAll"in t))return!1;try{return t.querySelectorAll(":target"),!0}catch(n){return!1}});var C=t.documentElement;Modernizr.addTest("contextmenu","contextMenu"in C&&"HTMLMenuItemElement"in e);var k="svg"===C.nodeName.toLowerCase();Modernizr.addTest("audio",function(){var e=a("audio"),t=!1;try{t=!!e.canPlayType,t&&(t=new Boolean(t),t.ogg=e.canPlayType('audio/ogg; codecs="vorbis"').replace(/^no$/,""),t.mp3=e.canPlayType('audio/mpeg; codecs="mp3"').replace(/^no$/,""),t.opus=e.canPlayType('audio/ogg; codecs="opus"')||e.canPlayType('audio/webm; codecs="opus"').replace(/^no$/,""),t.wav=e.canPlayType('audio/wav; codecs="1"').replace(/^no$/,""),t.m4a=(e.canPlayType("audio/x-m4a;")||e.canPlayType("audio/aac;")).replace(/^no$/,""))}catch(n){}return t}),Modernizr.addTest("canvas",function(){var e=a("canvas");return!(!e.getContext||!e.getContext("2d"))}),Modernizr.addTest("olreversed","reversed"in a("ol")),Modernizr.addTest("video",function(){var e=a("video"),t=!1;try{t=!!e.canPlayType,t&&(t=new Boolean(t),t.ogg=e.canPlayType('video/ogg; codecs="theora"').replace(/^no$/,""),t.h264=e.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/,""),t.webm=e.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/,""),t.vp9=e.canPlayType('video/webm; codecs="vp9"').replace(/^no$/,""),t.hls=e.canPlayType('application/x-mpegURL; codecs="avc1.42E01E"').replace(/^no$/,""))}catch(n){}return t}),Modernizr.addTest("bgpositionshorthand",function(){var e=a("a"),t=e.style,n="right 10px bottom 10px";return t.cssText="background-position: "+n+";",t.backgroundPosition===n}),Modernizr.addTest("multiplebgs",function(){var e=a("a").style;return e.cssText="background:url(https://),url(https://),red url(https://)",/(url\s*\(.*?){3}/.test(e.background)}),Modernizr.addTest("cssremunit",function(){var e=a("a").style;try{e.fontSize="3rem"}catch(t){}return/rem/.test(e.fontSize)}),Modernizr.addTest("preserve3d",function(){var t,n,r=e.CSS,i=!1;return r&&r.supports&&r.supports("(transform-style: preserve-3d)")?!0:(t=a("a"),n=a("a"),t.style.cssText="display: block; transform-style: preserve-3d; transform-origin: right; transform: rotateY(40deg);",n.style.cssText="display: block; width: 9px; height: 1px; background: #000; transform-origin: right; transform: rotateY(40deg);",t.appendChild(n),C.appendChild(t),i=n.getBoundingClientRect(),C.removeChild(t),i=i.width&&i.width<4)}),Modernizr.addTest("capture","capture"in a("input")),Modernizr.addTest("fileinput",function(){if(navigator.userAgent.match(/(Android (1.0|1.1|1.5|1.6|2.0|2.1))|(Windows Phone (OS 7|8.0))|(XBLWP)|(ZuneWP)|(w(eb)?OSBrowser)|(webOS)|(Kindle\/(1.0|2.0|2.5|3.0))/))return!1;var e=a("input");return e.type="file",!e.disabled}),Modernizr.addTest("formattribute",function(){var e,n=a("form"),r=a("input"),i=a("div"),o="formtest"+(new Date).getTime(),s=!1;n.id=o;try{r.setAttribute("form",o)}catch(d){t.createAttribute&&(e=t.createAttribute("form"),e.nodeValue=o,r.setAttributeNode(e))}return i.appendChild(n),i.appendChild(r),C.appendChild(i),s=n.elements&&1===n.elements.length&&r.form==n,i.parentNode.removeChild(i),s}),Modernizr.addTest("placeholder","placeholder"in a("input")&&"placeholder"in a("textarea")),Modernizr.addTest("textareamaxlength",!!("maxLength"in a("textarea")));var S=a("input"),z="autocomplete autofocus list placeholder max min multiple pattern required step".split(" "),P={};Modernizr.input=function(t){for(var n=0,r=t.length;r>n;n++)P[t[n]]=!!(t[n]in S);return P.list&&(P.list=!(!a("datalist")||!e.HTMLDataListElement)),P}(z);var _="search tel url email datetime date month week time datetime-local number range color".split(" "),E={};Modernizr.inputtypes=function(e){for(var r,i,o,a=e.length,s="1)",d=0;a>d;d++)S.setAttribute("type",r=e[d]),o="text"!==S.type&&"style"in S,o&&(S.value=s,S.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(r)&&S.style.WebkitAppearance!==n?(C.appendChild(S),i=t.defaultView,o=i.getComputedStyle&&"textfield"!==i.getComputedStyle(S,null).WebkitAppearance&&0!==S.offsetHeight,C.removeChild(S)):/^(search|tel)$/.test(r)||(o=/^(url|email)$/.test(r)?S.checkValidity&&S.checkValidity()===!1:S.value!=s)),E[e[d]]=!!o;return E}(_);var B=w._config.usePrefixes?" -webkit- -moz- -o- -ms- ".split(" "):["",""];w._prefixes=B,Modernizr.addTest("csscalc",function(){var e="width:",t="calc(10px);",n=a("a");return n.style.cssText=e+B.join(t+e),!!n.style.length}),Modernizr.addTest("cssgradients",function(){for(var e,t="background-image:",n="gradient(linear,left top,right bottom,from(#9f9),to(white));",r="",i=0,o=B.length-1;o>i;i++)e=0===i?"to ":"",r+=t+B[i]+"linear-gradient("+e+"left top, #9f9, white);";Modernizr._config.usePrefixes&&(r+=t+"-webkit-"+n);var s=a("a"),d=s.style;return d.cssText=r,(""+d.backgroundImage).indexOf("gradient")>-1}),Modernizr.addTest("opacity",function(){var e=a("a").style;return e.cssText=B.join("opacity:.55;"),/^0.55$/.test(e.opacity)});var N={elem:a("modernizr")};Modernizr._q.push(function(){delete N.elem}),Modernizr.addTest("cssexunit",function(){var e,t=N.elem.style;try{t.fontSize="3ex",e=-1!==t.fontSize.indexOf("ex")}catch(n){e=!1}return e});var W="CSS"in e&&"supports"in e.CSS,R="supportsCSS"in e;Modernizr.addTest("supports",W||R),Modernizr.addTest("hsla",function(){var e=a("a").style;return e.cssText="background-color:hsla(120,40%,100%,.5)",d(e.backgroundColor,"rgba")||d(e.backgroundColor,"hsla")});var L;!function(){var e={}.hasOwnProperty;L=r(e,"undefined")||r(e.call,"undefined")?function(e,t){return t in e&&r(e.constructor.prototype[t],"undefined")}:function(t,n){return e.call(t,n)}}(),w._l={},w.on=function(e,t){this._l[e]||(this._l[e]=[]),this._l[e].push(t),Modernizr.hasOwnProperty(e)&&setTimeout(function(){Modernizr._trigger(e,Modernizr[e])},0)},w._trigger=function(e,t){if(this._l[e]){var n=this._l[e];setTimeout(function(){var e,r;for(e=0;e<n.length;e++)(r=n[e])(t)},0),delete this._l[e]}},Modernizr._q.push(function(){w.addTest=u}),Modernizr.addAsyncTest(function(){var n,r,i=function(e){C.contains(e)||C.appendChild(e)},o=function(e){e.fake&&e.parentNode&&e.parentNode.removeChild(e)},d=function(e,t){var n=!!e;if(n&&(n=new Boolean(n),n.blocked="blocked"===e),u("flash",function(){return n}),t&&h.contains(t)){for(;t.parentNode!==h;)t=t.parentNode;h.removeChild(t)}};try{r="ActiveXObject"in e&&"Pan"in new e.ActiveXObject("ShockwaveFlash.ShockwaveFlash")}catch(l){}if(n=!("plugins"in navigator&&"Shockwave Flash"in navigator.plugins||r),n||k)d(!1);else{var c,p,f=a("embed"),h=s();if(f.type="application/x-shockwave-flash",h.appendChild(f),!("Pan"in f||r))return i(h),d("blocked",f),void o(h);c=function(){return i(h),C.contains(h)?(C.contains(f)?(p=f.style.cssText,""!==p?d("blocked",f):d(!0,f)):d("blocked"),void o(h)):(h=t.body||h,f=a("embed"),f.type="application/x-shockwave-flash",h.appendChild(f),setTimeout(c,1e3))},setTimeout(c,10)}}),Modernizr.addAsyncTest(function(){if(!Modernizr.canvas)return!1;var e=new Image,t=a("canvas"),n=t.getContext("2d");e.onload=function(){u("apng",function(){return"undefined"==typeof t.getContext?!1:(n.drawImage(e,0,0),0===n.getImageData(0,0,1,1).data[3])})},e.src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAACGFjVEwAAAABAAAAAcMq2TYAAAANSURBVAiZY2BgYPgPAAEEAQB9ssjfAAAAGmZjVEwAAAAAAAAAAQAAAAEAAAAAAAAAAAD6A+gBAbNU+2sAAAARZmRBVAAAAAEImWNgYGBgAAAABQAB6MzFdgAAAABJRU5ErkJggg=="});var M=w.testStyles=p;Modernizr.addTest("hiddenscroll",function(){return M("#modernizr {width:100px;height:100px;overflow:scroll}",function(e){return e.offsetWidth===e.clientWidth})}),Modernizr.addTest("unicode",function(){var e,t=a("span"),n=a("span");return M("#modernizr{font-family:Arial,sans;font-size:300em;}",function(r){t.innerHTML=k?"å¦‡":"&#5987;",n.innerHTML=k?"â˜†":"&#9734;",r.appendChild(t),r.appendChild(n),e="offsetWidth"in t&&t.offsetWidth!==n.offsetWidth}),e}),Modernizr.addTest("checked",function(){return M("#modernizr {position:absolute} #modernizr input {margin-left:10px} #modernizr :checked {margin-left:20px;display:block}",function(e){var t=a("input");return t.setAttribute("type","checkbox"),t.setAttribute("checked","checked"),e.appendChild(t),20===t.offsetLeft})}),M("#modernizr{display: table; direction: ltr}#modernizr div{display: table-cell; padding: 10px}",function(e){var t,n=e.childNodes;t=n[0].offsetLeft<n[1].offsetLeft,Modernizr.addTest("displaytable",t,{aliases:["display-table"]})},2);var j=function(){var e=navigator.userAgent,t=e.match(/w(eb)?osbrowser/gi),n=e.match(/windows phone/gi)&&e.match(/iemobile\/([0-9])+/gi)&&parseFloat(RegExp.$1)>=9;return t||n}();j?Modernizr.addTest("fontface",!1):M('@font-face {font-family:"font";src:url("https://")}',function(e,n){var r=t.getElementById("smodernizr"),i=r.sheet||r.styleSheet,o=i?i.cssRules&&i.cssRules[0]?i.cssRules[0].cssText:i.cssText||"":"",a=/src/i.test(o)&&0===o.indexOf(n.split(" ")[0]);Modernizr.addTest("fontface",a)}),Modernizr.addTest("cssinvalid",function(){return M("#modernizr input{height:0;border:0;padding:0;margin:0;width:10px} #modernizr input:invalid{width:50px}",function(e){var t=a("input");return t.required=!0,e.appendChild(t),t.clientWidth>10})}),M("#modernizr div {width:100px} #modernizr :last-child{width:200px;display:block}",function(e){Modernizr.addTest("lastchild",e.lastChild.offsetWidth>e.firstChild.offsetWidth)},2),M("#modernizr div {width:1px} #modernizr div:nth-child(2n) {width:2px;}",function(e){for(var t=e.getElementsByTagName("div"),n=!0,r=0;5>r;r++)n=n&&t[r].offsetWidth===r%2+1;Modernizr.addTest("nthchild",n)},5),M("#modernizr{overflow: scroll; width: 40px; height: 40px; }#"+B.join("scrollbar{width:10px} #modernizr::").split("#").slice(1).join("#")+"scrollbar{width:10px}",function(e){Modernizr.addTest("cssscrollbar","scrollWidth"in e&&30==e.scrollWidth)}),Modernizr.addTest("siblinggeneral",function(){return M("#modernizr div {width:100px} #modernizr div ~ div {width:200px;display:block}",function(e){return 200==e.lastChild.offsetWidth},2)}),Modernizr.addTest("cssvalid",function(){return M("#modernizr input{height:0;border:0;padding:0;margin:0;width:10px} #modernizr input:valid{width:50px}",function(e){var t=a("input");return e.appendChild(t),t.clientWidth>10})}),M("#modernizr1{width: 50vmax}#modernizr2{width:50px;height:50px;overflow:scroll}#modernizr3{position:fixed;top:0;left:0;bottom:0;right:0}",function(e){var t=e.childNodes[2],n=e.childNodes[1],r=e.childNodes[0],i=parseInt((n.offsetWidth-n.clientWidth)/2,10),o=r.clientWidth/100,a=r.clientHeight/100,s=parseInt(50*Math.max(o,a),10),d=parseInt(c(t,null,"width"),10);Modernizr.addTest("cssvmaxunit",l(s,d)||l(s,d-i))},3),M("#modernizr1{width: 50vm;width:50vmin}#modernizr2{width:50px;height:50px;overflow:scroll}#modernizr3{position:fixed;top:0;left:0;bottom:0;right:0}",function(e){var t=e.childNodes[2],n=e.childNodes[1],r=e.childNodes[0],i=parseInt((n.offsetWidth-n.clientWidth)/2,10),o=r.clientWidth/100,a=r.clientHeight/100,s=parseInt(50*Math.min(o,a),10),d=parseInt(c(t,null,"width"),10);Modernizr.addTest("cssvminunit",l(s,d)||l(s,d-i))},3);var O=function(){var t=e.matchMedia||e.msMatchMedia;return t?function(e){var n=t(e);return n&&n.matches||!1}:function(t){var n=!1;return p("@media "+t+" { #modernizr { position: absolute; } }",function(t){n="absolute"==(e.getComputedStyle?e.getComputedStyle(t,null):t.currentStyle).position}),n}}();w.mq=O,Modernizr.addTest("mediaqueries",O("only all"));var $={style:N.elem.style};Modernizr._q.unshift(function(){delete $.style});var I="Moz O ms Webkit",V=w._config.usePrefixes?I.split(" "):[];w._cssomPrefixes=V;var q=function(t){var r,i=B.length,o=e.CSSRule;if("undefined"==typeof o)return n;if(!t)return!1;if(t=t.replace(/^@/,""),r=t.replace(/-/g,"_").toUpperCase()+"_RULE",r in o)return"@"+t;for(var a=0;i>a;a++){var s=B[a],d=s.toUpperCase()+"_"+r;if(d in o)return"@-"+s.toLowerCase()+"-"+t}return!1};w.atRule=q;var U=w._config.usePrefixes?I.toLowerCase().split(" "):[];w._domPrefixes=U;var F=w.testProp=function(e,t,r){return y([e],n,t,r)};Modernizr.addTest("textshadow",F("textShadow","1px 1px")),w.testAllProps=x,w.testAllProps=b,Modernizr.addTest("cssanimations",b("animationName","a",!0)),Modernizr.addTest("bgpositionxy",function(){return b("backgroundPositionX","3px",!0)&&b("backgroundPositionY","5px",!0)}),Modernizr.addTest("bgrepeatround",b("backgroundRepeat","round")),Modernizr.addTest("bgrepeatspace",b("backgroundRepeat","space")),Modernizr.addTest("backgroundsize",b("backgroundSize","100%",!0)),Modernizr.addTest("bgsizecover",b("backgroundSize","cover")),Modernizr.addTest("borderimage",b("borderImage","url() 1",!0)),Modernizr.addTest("borderradius",b("borderRadius","0px",!0)),Modernizr.addTest("boxshadow",b("boxShadow","1px 1px",!0)),Modernizr.addTest("boxsizing",b("boxSizing","border-box",!0)&&(t.documentMode===n||t.documentMode>7)),function(){Modernizr.addTest("csscolumns",function(){var e=!1,t=b("columnCount");try{e=!!t,e&&(e=new Boolean(e))}catch(n){}return e});for(var e,t,n=["Width","Span","Fill","Gap","Rule","RuleColor","RuleStyle","RuleWidth","BreakBefore","BreakAfter","BreakInside"],r=0;r<n.length;r++)e=n[r].toLowerCase(),t=b("column"+n[r]),("breakbefore"===e||"breakafter"===e||"breakinside"==e)&&(t=t||b(n[r])),Modernizr.addTest("csscolumns."+e,t)}(),Modernizr.addTest("cssgridlegacy",b("grid-columns","10px",!0)),Modernizr.addTest("cssgrid",b("grid-template-rows","none",!0)),Modernizr.addTest("cssfilters",function(){if(Modernizr.supports)return b("filter","blur(2px)");var e=a("a");return e.style.cssText=B.join("filter:blur(2px); "),!!e.style.length&&(t.documentMode===n||t.documentMode>9)}),Modernizr.addTest("flexbox",b("flexBasis","1px",!0)),Modernizr.addTest("flexboxlegacy",b("boxDirection","reverse",!0)),Modernizr.addTest("flexboxtweener",b("flexAlign","end",!0)),Modernizr.addTest("overflowscrolling",b("overflowScrolling","touch",!0)),Modernizr.addTest("csstransforms",function(){return-1===navigator.userAgent.indexOf("Android 2.")&&b("transform","scale(1)",!0)}),Modernizr.addTest("csstransforms3d",function(){var e=!!b("perspective","1px",!0),t=Modernizr._config.usePrefixes;if(e&&(!t||"webkitPerspective"in C.style)){var n,r="#modernizr{width:0;height:0}";Modernizr.supports?n="@supports (perspective: 1px)":(n="@media (transform-3d)",t&&(n+=",(-webkit-transform-3d)")),n+="{#modernizr{width:7px;height:18px;margin:0;padding:0;border:0}}",M(r+n,function(t){e=7===t.offsetWidth&&18===t.offsetHeight})}return e}),Modernizr.addTest("csstransformslevel2",function(){return b("translate","45px",!0)}),Modernizr.addTest("csstransitions",b("transition","all",!0)),Modernizr.addTest("userselect",b("userSelect","none",!0));var H=w.prefixed=function(e,t,n){return 0===e.indexOf("@")?q(e):(-1!=e.indexOf("-")&&(e=f(e)),t?x(e,t,n):x(e,"pfx"))};Modernizr.addTest("backgroundblendmode",H("backgroundBlendMode","text")),Modernizr.addTest("wrapflow",function(){var e=H("wrapFlow");if(!e||k)return!1;var t=e.replace(/([A-Z])/g,function(e,t){return"-"+t.toLowerCase()}).replace(/^ms-/,"-ms-"),r=a("div"),i=a("div"),o=a("span");i.style.cssText="position: absolute; left: 50px; width: 100px; height: 20px;"+t+":end;",o.innerText="X",r.appendChild(i),r.appendChild(o),C.appendChild(r);var s=o.offsetLeft;return C.removeChild(r),i=o=r=n,150==s}),Modernizr.addTest("requestautocomplete",!!H("requestAutocomplete",a("form"))),i(),o(T),delete w.addTest,delete w.addAsyncTest;for(var Y=0;Y<Modernizr._q.length;Y++)Modernizr._q[Y]();e.Modernizr=Modernizr}(window,document);