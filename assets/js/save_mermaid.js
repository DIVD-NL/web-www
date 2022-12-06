setTimeout(add_svg_hrefs, 5000);

function add_svg_hrefs() {
    var svgLinks = document.querySelector('.save-svg')
    
    if ( svgLinks ) {
        if ( Array.isArray(svgLinks) ) {
            for( var i = 0; i < svgLinks.length; i++) {
                addSvgHref(svgLinks[i])
            }
        } else {
            addSvgHref(svgLinks)
        }
    }
}

function addSvgHref(link) {
    // Get query 
    q = link.target
    
    //get svg element.
    var svg = document.querySelector(q)

    //get svg source.
    var serializer = new XMLSerializer();
    var source = serializer.serializeToString(svg);

    //add name spaces.
    if(!source.match(/^<svg[^>]+xmlns="http\:\/\/www\.w3\.org\/2000\/svg"/)){
    source = source.replace(/^<svg/, '<svg xmlns="http://www.w3.org/2000/svg"');
    }
    if(!source.match(/^<svg[^>]+"http\:\/\/www\.w3\.org\/1999\/xlink"/)){
    source = source.replace(/^<svg/, '<svg xmlns:xlink="http://www.w3.org/1999/xlink"');
    }

    //add xml declaration
    source = '<?xml version="1.0" standalone="no"?>\r\n' + source;

    //convert svg source to URI data scheme.
    var url = "data:image/svg+xml;charset=utf-8,"+encodeURIComponent(source);

    //set url value to a element's href attribute.
    //document.getElementById("link").href = url;
    link.href = url;
    link.target= null
    link.hidden = false
    //you can download svg file by right click menu.
    /**/
}
