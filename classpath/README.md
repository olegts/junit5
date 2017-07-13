#NOTE:
`byte-buddy` libs couldn't be placed on module path, cause you'll get a following error:

`java.lang.IllegalArgumentException: byte.buddy.agent: Invalid module name: 'byte' is not a Java identifier`
