
# makefile for panorama stitching, created by hugin using the new makefilelib

# Tool configuration
NONA=nona
PTSTITCHER=PTStitcher
PTMENDER=PTmender
PTBLENDER=PTblender
PTMASKER=PTmasker
PTROLLER=PTroller
ENBLEND=enblend
ENFUSE=enfuse
SMARTBLEND=smartblend.exe
HDRMERGE=hugin_hdrmerge
RM=rm
EXIFTOOL=exiftool

# Project parameters
HUGIN_PROJECTION=2
HUGIN_HFOV=325
HUGIN_WIDTH=3000
HUGIN_HEIGHT=923

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW
NONA_OPTS=
ENBLEND_OPTS= -f3000x923
ENBLEND_LDR_COMP=--compression=LZW
ENBLEND_EXPOSURE_COMP=--compression=LZW
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS=
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS='-Software=Hugin 2013.0.0.4692917e7a55' '-UserComment<$${UserComment}&\#xa;Projection: Equirectangular (2)&\#xa;FOV: 325 x 100&\#xa;Ev: 0.00' -f

# the output panorama
LDR_REMAPPED_PREFIX=ninja\ jumo\ -\ header2
LDR_REMAPPED_PREFIX_SHELL=ninja\ jumo\ -\ header2
HDR_STACK_REMAPPED_PREFIX=ninja\ jumo\ -\ header2_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL=ninja\ jumo\ -\ header2_hdr_
LDR_EXPOSURE_REMAPPED_PREFIX=ninja\ jumo\ -\ header2_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL=ninja\ jumo\ -\ header2_exposure_layers_
PROJECT_FILE=/home/adam/Bureau/adam_web_site/images/ninja\ jumo\ -\ header2.pto
PROJECT_FILE_SHELL=/home/adam/Bureau/adam_web_site/images/ninja\ jumo\ -\ header2.pto
LDR_BLENDED=ninja\ jumo\ -\ header2.tif
LDR_BLENDED_SHELL=ninja\ jumo\ -\ header2.tif
LDR_STACKED_BLENDED=ninja\ jumo\ -\ header2_fused.tif
LDR_STACKED_BLENDED_SHELL=ninja\ jumo\ -\ header2_fused.tif
LDR_EXPOSURE_LAYERS_FUSED=ninja\ jumo\ -\ header2_blended_fused.tif
LDR_EXPOSURE_LAYERS_FUSED_SHELL=ninja\ jumo\ -\ header2_blended_fused.tif
HDR_BLENDED=ninja\ jumo\ -\ header2_hdr.exr
HDR_BLENDED_SHELL=ninja\ jumo\ -\ header2_hdr.exr

# first input image
INPUT_IMAGE_1=/home/adam/Images/ninja\ jumo.jpg
INPUT_IMAGE_1_SHELL=/home/adam/Images/ninja\ jumo.jpg

# all input images
INPUT_IMAGES=/home/adam/Images/ninja\ jumo.jpg\
/home/adam/Bureau/adam_web_site/images/png/favicon.png\
/home/adam/Images/ninja\ n.jpg\
/home/adam/Bureau/adam_web_site/images/header2.jpg
INPUT_IMAGES_SHELL=/home/adam/Images/ninja\ jumo.jpg\
/home/adam/Bureau/adam_web_site/images/png/favicon.png\
/home/adam/Images/ninja\ n.jpg\
/home/adam/Bureau/adam_web_site/images/header2.jpg

# remapped images
LDR_LAYERS=ninja\ jumo\ -\ header20000.tif\
ninja\ jumo\ -\ header20001.tif\
ninja\ jumo\ -\ header20002.tif\
ninja\ jumo\ -\ header20003.tif
LDR_LAYERS_SHELL=ninja\ jumo\ -\ header20000.tif\
ninja\ jumo\ -\ header20001.tif\
ninja\ jumo\ -\ header20002.tif\
ninja\ jumo\ -\ header20003.tif

# remapped images (hdr)
HDR_LAYERS=ninja\ jumo\ -\ header2_hdr_0000.exr\
ninja\ jumo\ -\ header2_hdr_0001.exr\
ninja\ jumo\ -\ header2_hdr_0002.exr\
ninja\ jumo\ -\ header2_hdr_0003.exr
HDR_LAYERS_SHELL=ninja\ jumo\ -\ header2_hdr_0000.exr\
ninja\ jumo\ -\ header2_hdr_0001.exr\
ninja\ jumo\ -\ header2_hdr_0002.exr\
ninja\ jumo\ -\ header2_hdr_0003.exr

# remapped maxval images
HDR_LAYERS_WEIGHTS=ninja\ jumo\ -\ header2_hdr_0000_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0001_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0002_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0003_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL=ninja\ jumo\ -\ header2_hdr_0000_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0001_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0002_gray.pgm\
ninja\ jumo\ -\ header2_hdr_0003_gray.pgm

# stacked hdr images
HDR_STACK_0=ninja\ jumo\ -\ header2_stack_hdr_0000.exr
HDR_STACK_0_SHELL=ninja\ jumo\ -\ header2_stack_hdr_0000.exr
HDR_STACK_0_INPUT=ninja\ jumo\ -\ header2_hdr_0000.exr
HDR_STACK_0_INPUT_SHELL=ninja\ jumo\ -\ header2_hdr_0000.exr
HDR_STACK_1=ninja\ jumo\ -\ header2_stack_hdr_0001.exr
HDR_STACK_1_SHELL=ninja\ jumo\ -\ header2_stack_hdr_0001.exr
HDR_STACK_1_INPUT=ninja\ jumo\ -\ header2_hdr_0001.exr
HDR_STACK_1_INPUT_SHELL=ninja\ jumo\ -\ header2_hdr_0001.exr
HDR_STACK_2=ninja\ jumo\ -\ header2_stack_hdr_0002.exr
HDR_STACK_2_SHELL=ninja\ jumo\ -\ header2_stack_hdr_0002.exr
HDR_STACK_2_INPUT=ninja\ jumo\ -\ header2_hdr_0002.exr
HDR_STACK_2_INPUT_SHELL=ninja\ jumo\ -\ header2_hdr_0002.exr
HDR_STACK_3=ninja\ jumo\ -\ header2_stack_hdr_0003.exr
HDR_STACK_3_SHELL=ninja\ jumo\ -\ header2_stack_hdr_0003.exr
HDR_STACK_3_INPUT=ninja\ jumo\ -\ header2_hdr_0003.exr
HDR_STACK_3_INPUT_SHELL=ninja\ jumo\ -\ header2_hdr_0003.exr
HDR_STACKS_NUMBERS=0 1 2 3 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=ninja\ jumo\ -\ header2_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL=ninja\ jumo\ -\ header2_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_INPUT=ninja\ jumo\ -\ header2_exposure_layers_0000.tif\
ninja\ jumo\ -\ header2_exposure_layers_0001.tif\
ninja\ jumo\ -\ header2_exposure_layers_0002.tif\
ninja\ jumo\ -\ header2_exposure_layers_0003.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0000.tif\
ninja\ jumo\ -\ header2_exposure_layers_0001.tif\
ninja\ jumo\ -\ header2_exposure_layers_0002.tif\
ninja\ jumo\ -\ header2_exposure_layers_0003.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=ninja\ jumo\ -\ header20000.tif\
ninja\ jumo\ -\ header20001.tif\
ninja\ jumo\ -\ header20002.tif\
ninja\ jumo\ -\ header20003.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL=ninja\ jumo\ -\ header20000.tif\
ninja\ jumo\ -\ header20001.tif\
ninja\ jumo\ -\ header20002.tif\
ninja\ jumo\ -\ header20003.tif
LDR_EXPOSURE_LAYER_0_EXPOSURE=0
LDR_EXPOSURE_LAYERS_NUMBERS=0 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=ninja\ jumo\ -\ header2_exposure_layers_0000.tif\
ninja\ jumo\ -\ header2_exposure_layers_0001.tif\
ninja\ jumo\ -\ header2_exposure_layers_0002.tif\
ninja\ jumo\ -\ header2_exposure_layers_0003.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0000.tif\
ninja\ jumo\ -\ header2_exposure_layers_0001.tif\
ninja\ jumo\ -\ header2_exposure_layers_0002.tif\
ninja\ jumo\ -\ header2_exposure_layers_0003.tif

# stacked ldr images
LDR_STACK_0=ninja\ jumo\ -\ header2_stack_ldr_0000.tif
LDR_STACK_0_SHELL=ninja\ jumo\ -\ header2_stack_ldr_0000.tif
LDR_STACK_0_INPUT=ninja\ jumo\ -\ header2_exposure_layers_0000.tif
LDR_STACK_0_INPUT_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0000.tif
LDR_STACK_1=ninja\ jumo\ -\ header2_stack_ldr_0001.tif
LDR_STACK_1_SHELL=ninja\ jumo\ -\ header2_stack_ldr_0001.tif
LDR_STACK_1_INPUT=ninja\ jumo\ -\ header2_exposure_layers_0001.tif
LDR_STACK_1_INPUT_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0001.tif
LDR_STACK_2=ninja\ jumo\ -\ header2_stack_ldr_0002.tif
LDR_STACK_2_SHELL=ninja\ jumo\ -\ header2_stack_ldr_0002.tif
LDR_STACK_2_INPUT=ninja\ jumo\ -\ header2_exposure_layers_0002.tif
LDR_STACK_2_INPUT_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0002.tif
LDR_STACK_3=ninja\ jumo\ -\ header2_stack_ldr_0003.tif
LDR_STACK_3_SHELL=ninja\ jumo\ -\ header2_stack_ldr_0003.tif
LDR_STACK_3_INPUT=ninja\ jumo\ -\ header2_exposure_layers_0003.tif
LDR_STACK_3_INPUT_SHELL=ninja\ jumo\ -\ header2_exposure_layers_0003.tif
LDR_STACKS_NUMBERS=0 1 2 3 
LDR_STACKS=$(LDR_STACK_0) $(LDR_STACK_1) $(LDR_STACK_2) $(LDR_STACK_3) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) $(LDR_STACK_1_SHELL) $(LDR_STACK_2_SHELL) $(LDR_STACK_3_SHELL) 
DO_LDR_BLENDED=1

all : startStitching $(LDR_BLENDED) 

startStitching : 
	@echo '==========================================================================='
	@echo 'Stitching panorama'
	@echo '==========================================================================='

clean : 
	@echo '==========================================================================='
	@echo 'Remove temporary files'
	@echo '==========================================================================='
	-$(RM) $(LDR_LAYERS_SHELL) 

test : 
	@echo '==========================================================================='
	@echo 'Testing programs'
	@echo '==========================================================================='
	@echo -n 'Checking nona...'
	@-$(NONA) --help > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enblend...'
	@-$(ENBLEND) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enfuse...'
	@-$(ENFUSE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking hugin_hdrmerge...'
	@-$(HDRMERGE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking exiftool...'
	@-$(EXIFTOOL) -ver > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'

info : 
	@echo '==========================================================================='
	@echo '***************  Panorama makefile generated by Hugin       ***************'
	@echo '==========================================================================='
	@echo 'System information'
	@echo '==========================================================================='
	@echo -n 'Operating system: '
	@-uname -o
	@echo -n 'Release: '
	@-uname -r
	@echo -n 'Kernel version: '
	@-uname -v
	@echo -n 'Machine: '
	@-uname -m
	@echo 'Disc usage'
	@-df -h
	@echo 'Memory usage'
	@-free -m
	@echo '==========================================================================='
	@echo 'Output options'
	@echo '==========================================================================='
	@echo 'Hugin Version: 2013.0.0.4692917e7a55'
	@echo 'Project file: /home/adam/Bureau/adam_web_site/images/ninja jumo - header2.pto'
	@echo 'Output prefix: ninja jumo - header2'
	@echo 'Projection: Equirectangular (2)'
	@echo 'Field of view: 325 x 100'
	@echo 'Canvas dimensions: 3000 x 923'
	@echo 'Crop area: (0,0) - (3000,923)'
	@echo 'Output exposure value: 0.00'
	@echo 'Output stacks minimum overlap: 0.700'
	@echo 'Output layers maximum Ev difference: 0.50'
	@echo 'Selected outputs'
	@echo 'Normal panorama'
	@echo '* Blended panorama'
	@echo '==========================================================================='
	@echo 'Input images'
	@echo '==========================================================================='
	@echo 'Number of images in project file: 4'
	@echo 'Number of active images: 4'
	@echo 'Image 0: /home/adam/Images/ninja jumo.jpg'
	@echo 'Image 0: Size 530x530, Exposure: 0.00'
	@echo 'Image 1: /home/adam/Bureau/adam_web_site/images/png/favicon.png'
	@echo 'Image 1: Size 176x176, Exposure: 0.00'
	@echo 'Image 2: /home/adam/Images/ninja n.jpg'
	@echo 'Image 2: Size 1280x720, Exposure: 0.00'
	@echo 'Image 3: /home/adam/Bureau/adam_web_site/images/header2.jpg'
	@echo 'Image 3: Size 1200x675, Exposure: 0.00'

# Rules for ordinary TIFF_m and hdr output

ninja\ jumo\ -\ header20000.tif : /home/adam/Images/ninja\ jumo.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_hdr_0000.exr : /home/adam/Images/ninja\ jumo.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header20001.tif : /home/adam/Bureau/adam_web_site/images/png/favicon.png $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_hdr_0001.exr : /home/adam/Bureau/adam_web_site/images/png/favicon.png $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header20002.tif : /home/adam/Images/ninja\ n.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_hdr_0002.exr : /home/adam/Images/ninja\ n.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header20003.tif : /home/adam/Bureau/adam_web_site/images/header2.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_hdr_0003.exr : /home/adam/Bureau/adam_web_site/images/header2.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

ninja\ jumo\ -\ header2_exposure_layers_0000.tif : /home/adam/Images/ninja\ jumo.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_exposure_layers_0001.tif : /home/adam/Bureau/adam_web_site/images/png/favicon.png $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_exposure_layers_0002.tif : /home/adam/Images/ninja\ n.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

ninja\ jumo\ -\ header2_exposure_layers_0003.tif : /home/adam/Bureau/adam_web_site/images/header2.jpg $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 0 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_STACK_1) : $(LDR_STACK_1_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_1_SHELL) -- $(LDR_STACK_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_1_SHELL)

$(HDR_STACK_1) : $(HDR_STACK_1_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_1_SHELL) -- $(HDR_STACK_1_INPUT_SHELL)

$(LDR_STACK_2) : $(LDR_STACK_2_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_2_SHELL) -- $(LDR_STACK_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_2_SHELL)

$(HDR_STACK_2) : $(HDR_STACK_2_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_2_SHELL) -- $(HDR_STACK_2_INPUT_SHELL)

$(LDR_STACK_3) : $(LDR_STACK_3_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_3_SHELL) -- $(LDR_STACK_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_3_SHELL)

$(HDR_STACK_3) : $(HDR_STACK_3_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_3_SHELL) -- $(HDR_STACK_3_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_STACKED_BLENDED) : $(LDR_STACKS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_STACKED_BLENDED_SHELL) -- $(LDR_STACKS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_STACKED_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYERS_FUSED) : $(LDR_EXPOSURE_LAYERS) 
	$(ENFUSE) $(ENBLEND_LDR_COMP) $(ENFUSE_OPTS) -o $(LDR_EXPOSURE_LAYERS_FUSED_SHELL) -- $(LDR_EXPOSURE_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_EXPOSURE_LAYERS_FUSED_SHELL)

$(HDR_BLENDED) : $(HDR_STACKS) 
	$(ENBLEND) $(ENBLEND_HDR_COMP) $(ENBLEND_OPTS) -o $(HDR_BLENDED_SHELL) -- $(HDR_STACKS_SHELL)

$(LDR_REMAPPED_PREFIX)_multilayer.tif : $(LDR_LAYERS) 
	tiffcp $(LDR_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.tif

$(LDR_REMAPPED_PREFIX)_fused_multilayer.tif : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	tiffcp $(LDR_STACKS_SHELL) $(LDR_EXPOSURE_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.tif

$(LDR_REMAPPED_PREFIX)_multilayer.psd : $(LDR_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.psd $(LDR_LAYERS_SHELL)

$(LDR_REMAPPED_PREFIX)_fused_multilayer.psd : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.psd $(LDR_STACKS_SHELL)$(LDR_EXPOSURE_LAYERS_SHELL)
