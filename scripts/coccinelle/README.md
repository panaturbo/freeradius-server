
# Official site
http://coccinelle.lip6.fr/

# Howtos
http://coccinelle.lip6.fr/papers/tutorial.pdf
http://coccinelle.lip6.fr/papers/tutorial_kvm.pdf

# Appresentation
https://www.youtube.com/watch?v=buZrNd6XkEw

# Tools
https://github.com/regit/coccigrep

# Sample

- List all entries 'vb_strvalue' from fr_value_box_t

coccigrep -g -t fr_value_box_t -a vb_strvalue src/freeradius-devel/server/*

# TODO
Maybe like https://bottest.wiki.kernel.org/coccicheck

# Samples *.occi
- https://github.com/coccinelle/coccinelle/tree/master/demos

