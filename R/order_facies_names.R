order_facies_names = function(s){
 #' @export
 #'
 #' @title order facies names according to appearance
 #'
 #' @param s a stratcol object
 #'
 #' @returns a stratcol object
 #'
 #' @description
  #' enumeratrs the facies according to their order of appearance (counting from the bottom of the section). To be applied to stratigraphic columns before get_mom is called
  #'
   UseMethod("stratcol")
}

order_facies_names.stratcol = function(s){
  #' @export
  old_names = unique(s$fa)
  no_facies = length(old_names)
  new_names = seq_len(no_facies)

  new_s = rename_facies(s, new_names = new_names, old_names = old_names)

  return(new_s)
}