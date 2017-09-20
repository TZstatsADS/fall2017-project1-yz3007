f.speechlinks=function(html.page, node.type=".ver12 a"){
  urls <- html.page %>% # feed `main.page` to the next step
    html_nodes(node.type) %>% # get the CSS nodes
    html_attr("href") # extract the URLs
  # Get link text
  links <- main.page %>% # feed `main.page` to the next step
    html_nodes(node.type) %>% # get the CSS nodes
    html_text() # extract the link text
  # Combine `links` and `urls` into a data.frame
  out <- data.frame(links = links, urls = urls, stringsAsFactors = FALSE)
  
  return(out)
  
}

