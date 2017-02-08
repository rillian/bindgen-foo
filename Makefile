foo: foo.cc foo.h
	c++ -g -Wall -o $@ $<

check: foo
	./foo

clean:
	$(RM) foo
