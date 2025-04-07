
NVCC = nvcc
DFLAGS = $(MPI_FLAGS) -lineinfo
RFLAGS = $(MPI_FLAGS) -O3 -DNDEBUG 


all: release 

debug: LINKFLAGS +=

release: FLAGS += $(RFLAGS)
debug: FLAGS += $(DFLAGS)

release: lulesh
debug: lulesh

lulesh: allocator.o lulesh.o lulesh-comms.o lulesh-comms-gpu.o
	$(NVCC) $(LINKFLAGS) allocator.o lulesh.o lulesh-comms.o lulesh-comms-gpu.o -o lulesh

allocator.o: ../src/allocator.cu ../src/vector.h
	$(NVCC) $(FLAGS) ../src/allocator.cu -I ../src -c -o allocator.o

lulesh.o: ../src/lulesh.cu ../src/util.h ../src/vector.h ../src/allocator.h
	$(NVCC) $(FLAGS) ../src/lulesh.cu -I ../src -c -o lulesh.o

lulesh-comms.o: ../src/lulesh-comms.cu
	$(NVCC) $(FLAGS) ../src/lulesh-comms.cu -I ../src -c -o lulesh-comms.o

lulesh-comms-gpu.o: ../src/lulesh-comms-gpu.cu
	$(NVCC) $(FLAGS) ../src/lulesh-comms-gpu.cu -I ../src -c -o lulesh-comms-gpu.o

clean:
	rm -rf allocator.o lulesh-comms.o lulesh-comms-gpu.o lulesh.o lulesh
