###
###  For this to work, ALL variables must be EXPORT'ed to be expanded 
###  from within the template file; E.G.: myNS. Else envsubst won't 
###  be able to see and make use of them.
###
#!/usr/bin/env bash                                                                
set -x                                                                             
###---------------------------------------------------------------------------- 
### VARIABLES                                                                      
###---------------------------------------------------------------------------- 
# ENV Stuff                                                                        
deploymentTmpl='/path/to/file.tmpl'                                                
kubeManifest='/tmp/output.yaml'                                                    
export myNS='demo'                                                                 

###---------------------------------------------------------------------------- 
### MAIN PROGRAM                                                                   
###---------------------------------------------------------------------------- 
### Create a manifest from a template file                                         
###---                                                                             
cat $deploymentTmpl | envsubst > "$kubeManifest"                                   
                                                                                   
### Display the results                                                            
cat "$kubeManifest"                                                                
