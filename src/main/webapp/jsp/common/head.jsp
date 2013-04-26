<title>${title}</title>
<link href="/contego/js/lib/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/contego/js/lib/jquery/jquery.js"></script>
<script type="text/javascript" src="/contego/js/lib/mustache/mustache.js"></script>
<script type="text/javascript" src="/contego/js/lib/jstree/jstree.min.js"></script>
<script type="text/javascript" src="/contego/js/lib/json2.js"></script>

<script type="text/javascript">

Types = {};
TypesTransport = (function(){
	
	var baseUrl = '/contego/app/user/list';
	
	function get(max, offset){
		return $.ajax({
			url   : baseUrl + getParams(max, offset), 
			type  : 'get',
			cache : false
		});
	}

	function getParams(max, offset){
		if(max && offset >= 0) {
			return "?max=" + max + "&offset=" + offset;
		}
		return "";
	}
	
	return {
		get : get
	}
	
})();

</script>

