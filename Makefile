TARGETS = back.stl lense_lock.stl plug.stl body.stl filter_lock.stl lense_holder.stl
DEPENDS = $(TARGETS:.stl=.dep)

all: $(TARGETS)

clean:
	rm -f $(TARGETS) $(DEPENDS)

%.stl: %.scad
	openscad $< -o rendered/$@
