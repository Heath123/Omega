TOOLCHAIN = sh-elf-gcc
EXE = elf

EPSILON_TELEMETRY ?= 0

HANDY_TARGETS_EXTENSIONS = g3a bin

USE_LIBA = 0
POINCARE_TREE_LOG = 0

SFLAGS := $(filter-out -fPIE, $(SFLAGS))
