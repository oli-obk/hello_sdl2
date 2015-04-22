SAMPLES = gccgo rust rust-cargo

all:
	@-$(foreach x,$(SAMPLES),make -C $(x);)

run:
	@-$(foreach x,$(SAMPLES),time make -C $(x) run;)

clean:
	@-$(foreach x,$(SAMPLES),make -C $(x) clean;)
