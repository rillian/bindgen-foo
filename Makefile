all: foo binding.rs

foo: foo.cc foo.h
	c++ -g -Wall --std=c++11 -o $@ $<

binding.rs: binding.hpp foo.h
	bindgen $< > $@

binding.hpp: foo.h
	$(RM) $@
	for file in $^; do echo -e "#include \"$$file\"" >> $@; done

check: foo
	./foo

clean:
	$(RM) foo
	$(RM) binding.rs
	$(RM) binding.hpp
