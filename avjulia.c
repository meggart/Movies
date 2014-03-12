#include "libavcodec/avcodec.h"
#include "libavutil/rational.h"

int setCodecProps(AVCodecContext *c, int bit_rate, int width, int height, int time_base1, int time_base2, int gop_size, int max_b_frames, unsigned int pix_fmt) {
	c->bit_rate = bit_rate;
	c->width = width;
	c->height = height;
	c->time_base= (AVRational){time_base1,time_base2};
	c->gop_size = gop_size; /* emit one intra frame every ten frames */
	c->max_b_frames=max_b_frames;
	c->pix_fmt = pix_fmt;
	return 0;
}

int setPictureProps(AVFrame *f, unsigned char *y, unsigned char *cb, unsigned char *cr, int width) {
	f->data[0] = y;
	f->data[1] = cb;
	f->data[2] = cr;
	f->linesize[0] = width;
	f->linesize[1] = width/2;
	f->linesize[2] = width/2;
	return 0;
}
