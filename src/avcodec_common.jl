macro c(ret_type, func, arg_types, lib)
    local args_in = Any[ symbol(string('a',x)) for x in 1:length(arg_types.args) ]
    quote
        $(esc(func))($(args_in...)) = ccall( ($(string(func)), $(Expr(:quote, lib)) ), $ret_type, $arg_types, $(args_in...) )
    end
end


const AV_CODEC_ID_H265 = 
const AV_CODEC_PROP_INTRA_ONLY = (1<<0)
const AV_CODEC_PROP_LOSSY = (1<<1)
const AV_CODEC_PROP_LOSSLESS = (1<<2)
const AV_CODEC_PROP_BITMAP_SUB = (1<<16)
const AV_CODEC_PROP_TEXT_SUB = (1<<17)
const FF_INPUT_BUFFER_PADDING_SIZE = 16
const FF_MIN_BUFFER_SIZE = 16384
const FF_MAX_B_FRAMES = 16
const CODEC_FLAG_UNALIGNED = 0x0001
const CODEC_FLAG_QSCALE = 0x0002
const CODEC_FLAG_4MV = 0x0004
const CODEC_FLAG_QPEL = 0x0010
const CODEC_FLAG_GMC = 0x0020
const CODEC_FLAG_MV0 = 0x0040
const CODEC_FLAG_INPUT_PRESERVED = 0x0100
const CODEC_FLAG_PASS1 = 0x0200
const CODEC_FLAG_PASS2 = 0x0400
const CODEC_FLAG_GRAY = 0x2000
const CODEC_FLAG_EMU_EDGE = 0x4000
const CODEC_FLAG_PSNR = 0x8000
const CODEC_FLAG_TRUNCATED = 0x00010000
const CODEC_FLAG_NORMALIZE_AQP = 0x00020000
const CODEC_FLAG_INTERLACED_DCT = 0x00040000
const CODEC_FLAG_LOW_DELAY = 0x00080000
const CODEC_FLAG_GLOBAL_HEADER = 0x00400000
const CODEC_FLAG_BITEXACT = 0x00800000
const CODEC_FLAG_AC_PRED = 0x01000000
const CODEC_FLAG_LOOP_FILTER = 0x00000800
const CODEC_FLAG_INTERLACED_ME = 0x20000000
const CODEC_FLAG_CLOSED_GOP = 0x80000000
const CODEC_FLAG2_FAST = 0x00000001
const CODEC_FLAG2_NO_OUTPUT = 0x00000004
const CODEC_FLAG2_LOCAL_HEADER = 0x00000008
const CODEC_FLAG2_DROP_FRAME_TIMECODE = 0x00002000
const CODEC_FLAG2_IGNORE_CROP = 0x00010000
const CODEC_FLAG2_CHUNKS = 0x00008000
const CODEC_FLAG2_SHOW_ALL = 0x00400000
const CODEC_CAP_DRAW_HORIZ_BAND = 0x0001
const CODEC_CAP_DR1 = 0x0002
const CODEC_CAP_TRUNCATED = 0x0008
const CODEC_CAP_HWACCEL = 0x0010
const CODEC_CAP_DELAY = 0x0020
const CODEC_CAP_SMALL_LAST_FRAME = 0x0040
const CODEC_CAP_HWACCEL_VDPAU = 0x0080
const CODEC_CAP_SUBFRAMES = 0x0100
const CODEC_CAP_EXPERIMENTAL = 0x0200
const CODEC_CAP_CHANNEL_CONF = 0x0400
const CODEC_CAP_NEG_LINESIZES = 0x0800
const CODEC_CAP_FRAME_THREADS = 0x1000
const CODEC_CAP_SLICE_THREADS = 0x2000
const CODEC_CAP_PARAM_CHANGE = 0x4000
const CODEC_CAP_AUTO_THREADS = 0x8000
const CODEC_CAP_VARIABLE_FRAME_SIZE = 0x10000
const CODEC_CAP_INTRA_ONLY = 0x40000000
const CODEC_CAP_LOSSLESS = 0x80000000
const MB_TYPE_INTRA4x4 = 0x0001
const MB_TYPE_INTRA16x16 = 0x0002
const MB_TYPE_INTRA_PCM = 0x0004
const MB_TYPE_16x16 = 0x0008
const MB_TYPE_16x8 = 0x0010
const MB_TYPE_8x16 = 0x0020
const MB_TYPE_8x8 = 0x0040
const MB_TYPE_INTERLACED = 0x0080
const MB_TYPE_DIRECT2 = 0x0100
const MB_TYPE_ACPRED = 0x0200
const MB_TYPE_GMC = 0x0400
const MB_TYPE_SKIP = 0x0800
const MB_TYPE_P0L0 = 0x1000
const MB_TYPE_P1L0 = 0x2000
const MB_TYPE_P0L1 = 0x4000
const MB_TYPE_P1L1 = 0x8000
# Skipping MacroDefinition: MB_TYPE_L0(MB_TYPE_P0L0|MB_TYPE_P1L0)
# Skipping MacroDefinition: MB_TYPE_L1(MB_TYPE_P0L1|MB_TYPE_P1L1)
# Skipping MacroDefinition: MB_TYPE_L0L1(MB_TYPE_L0|MB_TYPE_L1)
const MB_TYPE_QUANT = 0x00010000
const MB_TYPE_CBP = 0x00020000
const FF_QSCALE_TYPE_MPEG1 = 0
const FF_QSCALE_TYPE_MPEG2 = 1
const FF_QSCALE_TYPE_H264 = 2
const FF_QSCALE_TYPE_VP56 = 3
const FF_BUFFER_TYPE_INTERNAL = 1
const FF_BUFFER_TYPE_USER = 2
const FF_BUFFER_TYPE_SHARED = 4
const FF_BUFFER_TYPE_COPY = 8
const FF_BUFFER_HINTS_VALID = 0x01
const FF_BUFFER_HINTS_READABLE = 0x02
const FF_BUFFER_HINTS_PRESERVE = 0x04
const FF_BUFFER_HINTS_REUSABLE = 0x08
const AV_GET_BUFFER_FLAG_REF = (1<<0)
const AV_PKT_FLAG_KEY = 0x0001
const AV_PKT_FLAG_CORRUPT = 0x0002
const FF_COMPRESSION_DEFAULT = -1
const FF_ASPECT_EXTENDED = 15
const FF_RC_STRATEGY_XVID = 1
const FF_PRED_LEFT = 0
const FF_PRED_PLANE = 1
const FF_PRED_MEDIAN = 2
const FF_CMP_SAD = 0
const FF_CMP_SSE = 1
const FF_CMP_SATD = 2
const FF_CMP_DCT = 3
const FF_CMP_PSNR = 4
const FF_CMP_BIT = 5
const FF_CMP_RD = 6
const FF_CMP_ZERO = 7
const FF_CMP_VSAD = 8
const FF_CMP_VSSE = 9
const FF_CMP_NSSE = 10
const FF_CMP_W53 = 11
const FF_CMP_W97 = 12
const FF_CMP_DCTMAX = 13
const FF_CMP_DCT264 = 14
const FF_CMP_CHROMA = 256
const FF_DTG_AFD_SAME = 8
const FF_DTG_AFD_4_3 = 9
const FF_DTG_AFD_16_9 = 10
const FF_DTG_AFD_14_9 = 11
const FF_DTG_AFD_4_3_SP_14_9 = 13
const FF_DTG_AFD_16_9_SP_14_9 = 14
const FF_DTG_AFD_SP_4_3 = 15
const FF_DEFAULT_QUANT_BIAS = 999999
const SLICE_FLAG_CODED_ORDER = 0x0001
const SLICE_FLAG_ALLOW_FIELD = 0x0002
const SLICE_FLAG_ALLOW_PLANE = 0x0004
const FF_MB_DECISION_SIMPLE = 0
const FF_MB_DECISION_BITS = 1
const FF_MB_DECISION_RD = 2
const FF_CODER_TYPE_VLC = 0
const FF_CODER_TYPE_AC = 1
const FF_CODER_TYPE_RAW = 2
const FF_CODER_TYPE_RLE = 3
const FF_CODER_TYPE_DEFLATE = 4
const FF_BUG_AUTODETECT = 1
const FF_BUG_OLD_MSMPEG4 = 2
const FF_BUG_XVID_ILACE = 4
const FF_BUG_UMP4 = 8
const FF_BUG_NO_PADDING = 16
const FF_BUG_AMV = 32
const FF_BUG_AC_VLC = 0
const FF_BUG_QPEL_CHROMA = 64
const FF_BUG_STD_QPEL = 128
const FF_BUG_QPEL_CHROMA2 = 256
const FF_BUG_DIRECT_BLOCKSIZE = 512
const FF_BUG_EDGE = 1024
const FF_BUG_HPEL_CHROMA = 2048
const FF_BUG_DC_CLIP = 4096
const FF_BUG_MS = 8192
const FF_BUG_TRUNCATED = 16384
const FF_COMPLIANCE_VERY_STRICT = 2
const FF_COMPLIANCE_STRICT = 1
const FF_COMPLIANCE_NORMAL = 0
const FF_COMPLIANCE_UNOFFICIAL = -1
const FF_COMPLIANCE_EXPERIMENTAL = -2
const FF_EC_GUESS_MVS = 1
const FF_EC_DEBLOCK = 2
const FF_DEBUG_PICT_INFO = 1
const FF_DEBUG_RC = 2
const FF_DEBUG_BITSTREAM = 4
const FF_DEBUG_MB_TYPE = 8
const FF_DEBUG_QP = 16
const FF_DEBUG_MV = 32
const FF_DEBUG_DCT_COEFF = 0x00000040
const FF_DEBUG_SKIP = 0x00000080
const FF_DEBUG_STARTCODE = 0x00000100
const FF_DEBUG_PTS = 0x00000200
const FF_DEBUG_ER = 0x00000400
const FF_DEBUG_MMCO = 0x00000800
const FF_DEBUG_BUGS = 0x00001000
const FF_DEBUG_VIS_QP = 0x00002000
const FF_DEBUG_VIS_MB_TYPE = 0x00004000
const FF_DEBUG_BUFFERS = 0x00008000
const FF_DEBUG_THREADS = 0x00010000
const FF_DEBUG_VIS_MV_P_FOR = 0x00000001
const FF_DEBUG_VIS_MV_B_FOR = 0x00000002
const FF_DEBUG_VIS_MV_B_BACK = 0x00000004
const AV_EF_CRCCHECK = (1<<0)
const AV_EF_BITSTREAM = (1<<1)
const AV_EF_BUFFER = (1<<2)
const AV_EF_EXPLODE = (1<<3)
const AV_EF_CAREFUL = (1<<16)
const AV_EF_COMPLIANT = (1<<17)
const AV_EF_AGGRESSIVE = (1<<18)
const FF_DCT_AUTO = 0
const FF_DCT_FASTINT = 1
const FF_DCT_INT = 2
const FF_DCT_MMX = 3
const FF_DCT_ALTIVEC = 5
const FF_DCT_FAAN = 6
const FF_IDCT_AUTO = 0
const FF_IDCT_INT = 1
const FF_IDCT_SIMPLE = 2
const FF_IDCT_SIMPLEMMX = 3
const FF_IDCT_ARM = 7
const FF_IDCT_ALTIVEC = 8
const FF_IDCT_SH4 = 9
const FF_IDCT_SIMPLEARM = 10
const FF_IDCT_IPP = 13
const FF_IDCT_XVIDMMX = 14
const FF_IDCT_SIMPLEARMV5TE = 16
const FF_IDCT_SIMPLEARMV6 = 17
const FF_IDCT_SIMPLEVIS = 18
const FF_IDCT_FAAN = 20
const FF_IDCT_SIMPLENEON = 22
const FF_IDCT_SIMPLEALPHA = 23
const FF_THREAD_FRAME = 1
const FF_THREAD_SLICE = 2
const FF_PROFILE_UNKNOWN = -99
const FF_PROFILE_RESERVED = -100
const FF_PROFILE_AAC_MAIN = 0
const FF_PROFILE_AAC_LOW = 1
const FF_PROFILE_AAC_SSR = 2
const FF_PROFILE_AAC_LTP = 3
const FF_PROFILE_AAC_HE = 4
const FF_PROFILE_AAC_HE_V2 = 28
const FF_PROFILE_AAC_LD = 22
const FF_PROFILE_AAC_ELD = 38
const FF_PROFILE_MPEG2_AAC_LOW = 128
const FF_PROFILE_MPEG2_AAC_HE = 131
const FF_PROFILE_DTS = 20
const FF_PROFILE_DTS_ES = 30
const FF_PROFILE_DTS_96_24 = 40
const FF_PROFILE_DTS_HD_HRA = 50
const FF_PROFILE_DTS_HD_MA = 60
const FF_PROFILE_MPEG2_422 = 0
const FF_PROFILE_MPEG2_HIGH = 1
const FF_PROFILE_MPEG2_SS = 2
const FF_PROFILE_MPEG2_SNR_SCALABLE = 3
const FF_PROFILE_MPEG2_MAIN = 4
const FF_PROFILE_MPEG2_SIMPLE = 5
const FF_PROFILE_H264_CONSTRAINED = (1<<9)
const FF_PROFILE_H264_INTRA = (1<<11)
const FF_PROFILE_H264_BASELINE = 66
# Skipping MacroDefinition: FF_PROFILE_H264_CONSTRAINED_BASELINE(66|FF_PROFILE_H264_CONSTRAINED)
const FF_PROFILE_H264_MAIN = 77
const FF_PROFILE_H264_EXTENDED = 88
const FF_PROFILE_H264_HIGH = 100
const FF_PROFILE_H264_HIGH_10 = 110
# Skipping MacroDefinition: FF_PROFILE_H264_HIGH_10_INTRA(110|FF_PROFILE_H264_INTRA)
const FF_PROFILE_H264_HIGH_422 = 122
# Skipping MacroDefinition: FF_PROFILE_H264_HIGH_422_INTRA(122|FF_PROFILE_H264_INTRA)
const FF_PROFILE_H264_HIGH_444 = 144
const FF_PROFILE_H264_HIGH_444_PREDICTIVE = 244
# Skipping MacroDefinition: FF_PROFILE_H264_HIGH_444_INTRA(244|FF_PROFILE_H264_INTRA)
const FF_PROFILE_H264_CAVLC_444 = 44
const FF_PROFILE_VC1_SIMPLE = 0
const FF_PROFILE_VC1_MAIN = 1
const FF_PROFILE_VC1_COMPLEX = 2
const FF_PROFILE_VC1_ADVANCED = 3
const FF_PROFILE_MPEG4_SIMPLE = 0
const FF_PROFILE_MPEG4_SIMPLE_SCALABLE = 1
const FF_PROFILE_MPEG4_CORE = 2
const FF_PROFILE_MPEG4_MAIN = 3
const FF_PROFILE_MPEG4_N_BIT = 4
const FF_PROFILE_MPEG4_SCALABLE_TEXTURE = 5
const FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION = 6
const FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE = 7
const FF_PROFILE_MPEG4_HYBRID = 8
const FF_PROFILE_MPEG4_ADVANCED_REAL_TIME = 9
const FF_PROFILE_MPEG4_CORE_SCALABLE = 10
const FF_PROFILE_MPEG4_ADVANCED_CODING = 11
const FF_PROFILE_MPEG4_ADVANCED_CORE = 12
const FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE = 13
const FF_PROFILE_MPEG4_SIMPLE_STUDIO = 14
const FF_PROFILE_MPEG4_ADVANCED_SIMPLE = 15
const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0 = 0
const FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1 = 1
const FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION = 2
const FF_PROFILE_JPEG2000_DCINEMA_2K = 3
const FF_PROFILE_JPEG2000_DCINEMA_4K = 4
const FF_LEVEL_UNKNOWN = -99
const FF_SUB_CHARENC_MODE_DO_NOTHING = -1
const FF_SUB_CHARENC_MODE_AUTOMATIC = 0
const FF_SUB_CHARENC_MODE_PRE_DECODER = 1
const AV_SUBTITLE_FLAG_FORCED = 0x00000001
const AV_PARSER_PTS_NB = 4
const PARSER_FLAG_COMPLETE_FRAMES = 0x0001
const PARSER_FLAG_ONCE = 0x0002
const PARSER_FLAG_FETCHED_OFFSET = 0x0004
const PARSER_FLAG_USE_CODEC_TS = 0x1000
const FF_LOSS_RESOLUTION = 0x0001
const FF_LOSS_DEPTH = 0x0002
const FF_LOSS_COLORSPACE = 0x0004
const FF_LOSS_ALPHA = 0x0008
const FF_LOSS_COLORQUANT = 0x0010
const FF_LOSS_CHROMA = 0x0020
# begin enum ANONYMOUS_1
typealias AVCodecID Uint32
const AV_CODEC_ID_NONE = 0
const AV_CODEC_ID_MPEG1VIDEO = 1
const AV_CODEC_ID_MPEG2VIDEO = 2
const AV_CODEC_ID_MPEG2VIDEO_XVMC = 3
const AV_CODEC_ID_H261 = 4
const AV_CODEC_ID_H263 = 5
const AV_CODEC_ID_RV10 = 6
const AV_CODEC_ID_RV20 = 7
const AV_CODEC_ID_MJPEG = 8
const AV_CODEC_ID_MJPEGB = 9
const AV_CODEC_ID_LJPEG = 10
const AV_CODEC_ID_SP5X = 11
const AV_CODEC_ID_JPEGLS = 12
const AV_CODEC_ID_MPEG4 = 13
const AV_CODEC_ID_RAWVIDEO = 14
const AV_CODEC_ID_MSMPEG4V1 = 15
const AV_CODEC_ID_MSMPEG4V2 = 16
const AV_CODEC_ID_MSMPEG4V3 = 17
const AV_CODEC_ID_WMV1 = 18
const AV_CODEC_ID_WMV2 = 19
const AV_CODEC_ID_H263P = 20
const AV_CODEC_ID_H263I = 21
const AV_CODEC_ID_FLV1 = 22
const AV_CODEC_ID_SVQ1 = 23
const AV_CODEC_ID_SVQ3 = 24
const AV_CODEC_ID_DVVIDEO = 25
const AV_CODEC_ID_HUFFYUV = 26
const AV_CODEC_ID_CYUV = 27
const AV_CODEC_ID_H264 = 28
const AV_CODEC_ID_INDEO3 = 29
const AV_CODEC_ID_VP3 = 30
const AV_CODEC_ID_THEORA = 31
const AV_CODEC_ID_ASV1 = 32
const AV_CODEC_ID_ASV2 = 33
const AV_CODEC_ID_FFV1 = 34
const AV_CODEC_ID_4XM = 35
const AV_CODEC_ID_VCR1 = 36
const AV_CODEC_ID_CLJR = 37
const AV_CODEC_ID_MDEC = 38
const AV_CODEC_ID_ROQ = 39
const AV_CODEC_ID_INTERPLAY_VIDEO = 40
const AV_CODEC_ID_XAN_WC3 = 41
const AV_CODEC_ID_XAN_WC4 = 42
const AV_CODEC_ID_RPZA = 43
const AV_CODEC_ID_CINEPAK = 44
const AV_CODEC_ID_WS_VQA = 45
const AV_CODEC_ID_MSRLE = 46
const AV_CODEC_ID_MSVIDEO1 = 47
const AV_CODEC_ID_IDCIN = 48
const AV_CODEC_ID_8BPS = 49
const AV_CODEC_ID_SMC = 50
const AV_CODEC_ID_FLIC = 51
const AV_CODEC_ID_TRUEMOTION1 = 52
const AV_CODEC_ID_VMDVIDEO = 53
const AV_CODEC_ID_MSZH = 54
const AV_CODEC_ID_ZLIB = 55
const AV_CODEC_ID_QTRLE = 56
const AV_CODEC_ID_TSCC = 57
const AV_CODEC_ID_ULTI = 58
const AV_CODEC_ID_QDRAW = 59
const AV_CODEC_ID_VIXL = 60
const AV_CODEC_ID_QPEG = 61
const AV_CODEC_ID_PNG = 62
const AV_CODEC_ID_PPM = 63
const AV_CODEC_ID_PBM = 64
const AV_CODEC_ID_PGM = 65
const AV_CODEC_ID_PGMYUV = 66
const AV_CODEC_ID_PAM = 67
const AV_CODEC_ID_FFVHUFF = 68
const AV_CODEC_ID_RV30 = 69
const AV_CODEC_ID_RV40 = 70
const AV_CODEC_ID_VC1 = 71
const AV_CODEC_ID_WMV3 = 72
const AV_CODEC_ID_LOCO = 73
const AV_CODEC_ID_WNV1 = 74
const AV_CODEC_ID_AASC = 75
const AV_CODEC_ID_INDEO2 = 76
const AV_CODEC_ID_FRAPS = 77
const AV_CODEC_ID_TRUEMOTION2 = 78
const AV_CODEC_ID_BMP = 79
const AV_CODEC_ID_CSCD = 80
const AV_CODEC_ID_MMVIDEO = 81
const AV_CODEC_ID_ZMBV = 82
const AV_CODEC_ID_AVS = 83
const AV_CODEC_ID_SMACKVIDEO = 84
const AV_CODEC_ID_NUV = 85
const AV_CODEC_ID_KMVC = 86
const AV_CODEC_ID_FLASHSV = 87
const AV_CODEC_ID_CAVS = 88
const AV_CODEC_ID_JPEG2000 = 89
const AV_CODEC_ID_VMNC = 90
const AV_CODEC_ID_VP5 = 91
const AV_CODEC_ID_VP6 = 92
const AV_CODEC_ID_VP6F = 93
const AV_CODEC_ID_TARGA = 94
const AV_CODEC_ID_DSICINVIDEO = 95
const AV_CODEC_ID_TIERTEXSEQVIDEO = 96
const AV_CODEC_ID_TIFF = 97
const AV_CODEC_ID_GIF = 98
const AV_CODEC_ID_DXA = 99
const AV_CODEC_ID_DNXHD = 100
const AV_CODEC_ID_THP = 101
const AV_CODEC_ID_SGI = 102
const AV_CODEC_ID_C93 = 103
const AV_CODEC_ID_BETHSOFTVID = 104
const AV_CODEC_ID_PTX = 105
const AV_CODEC_ID_TXD = 106
const AV_CODEC_ID_VP6A = 107
const AV_CODEC_ID_AMV = 108
const AV_CODEC_ID_VB = 109
const AV_CODEC_ID_PCX = 110
const AV_CODEC_ID_SUNRAST = 111
const AV_CODEC_ID_INDEO4 = 112
const AV_CODEC_ID_INDEO5 = 113
const AV_CODEC_ID_MIMIC = 114
const AV_CODEC_ID_RL2 = 115
const AV_CODEC_ID_ESCAPE124 = 116
const AV_CODEC_ID_DIRAC = 117
const AV_CODEC_ID_BFI = 118
const AV_CODEC_ID_CMV = 119
const AV_CODEC_ID_MOTIONPIXELS = 120
const AV_CODEC_ID_TGV = 121
const AV_CODEC_ID_TGQ = 122
const AV_CODEC_ID_TQI = 123
const AV_CODEC_ID_AURA = 124
const AV_CODEC_ID_AURA2 = 125
const AV_CODEC_ID_V210X = 126
const AV_CODEC_ID_TMV = 127
const AV_CODEC_ID_V210 = 128
const AV_CODEC_ID_DPX = 129
const AV_CODEC_ID_MAD = 130
const AV_CODEC_ID_FRWU = 131
const AV_CODEC_ID_FLASHSV2 = 132
const AV_CODEC_ID_CDGRAPHICS = 133
const AV_CODEC_ID_R210 = 134
const AV_CODEC_ID_ANM = 135
const AV_CODEC_ID_BINKVIDEO = 136
const AV_CODEC_ID_IFF_ILBM = 137
const AV_CODEC_ID_IFF_BYTERUN1 = 138
const AV_CODEC_ID_KGV1 = 139
const AV_CODEC_ID_YOP = 140
const AV_CODEC_ID_VP8 = 141
const AV_CODEC_ID_PICTOR = 142
const AV_CODEC_ID_ANSI = 143
const AV_CODEC_ID_A64_MULTI = 144
const AV_CODEC_ID_A64_MULTI5 = 145
const AV_CODEC_ID_R10K = 146
const AV_CODEC_ID_MXPEG = 147
const AV_CODEC_ID_LAGARITH = 148
const AV_CODEC_ID_PRORES = 149
const AV_CODEC_ID_JV = 150
const AV_CODEC_ID_DFA = 151
const AV_CODEC_ID_WMV3IMAGE = 152
const AV_CODEC_ID_VC1IMAGE = 153
const AV_CODEC_ID_UTVIDEO = 154
const AV_CODEC_ID_BMV_VIDEO = 155
const AV_CODEC_ID_VBLE = 156
const AV_CODEC_ID_DXTORY = 157
const AV_CODEC_ID_V410 = 158
const AV_CODEC_ID_XWD = 159
const AV_CODEC_ID_CDXL = 160
const AV_CODEC_ID_XBM = 161
const AV_CODEC_ID_ZEROCODEC = 162
const AV_CODEC_ID_MSS1 = 163
const AV_CODEC_ID_MSA1 = 164
const AV_CODEC_ID_TSCC2 = 165
const AV_CODEC_ID_MTS2 = 166
const AV_CODEC_ID_CLLC = 167
const AV_CODEC_ID_MSS2 = 168
const AV_CODEC_ID_VP9 = 169
const AV_CODEC_ID_AIC = 170
const AV_CODEC_ID_ESCAPE130_DEPRECATED = 171
const AV_CODEC_ID_G2M_DEPRECATED = 172
const AV_CODEC_ID_WEBP_DEPRECATED = 173
const AV_CODEC_ID_BRENDER_PIX = 174
const AV_CODEC_ID_Y41P = 175
const AV_CODEC_ID_ESCAPE130 = 176
const AV_CODEC_ID_EXR = 177
const AV_CODEC_ID_AVRP = 178
const AV_CODEC_ID_012V = 179
const AV_CODEC_ID_G2M = 180
const AV_CODEC_ID_AVUI = 181
const AV_CODEC_ID_AYUV = 182
const AV_CODEC_ID_TARGA_Y216 = 183
const AV_CODEC_ID_V308 = 184
const AV_CODEC_ID_V408 = 185
const AV_CODEC_ID_YUV4 = 186
const AV_CODEC_ID_SANM = 187
const AV_CODEC_ID_PAF_VIDEO = 188
const AV_CODEC_ID_AVRN = 189
const AV_CODEC_ID_CPIA = 190
const AV_CODEC_ID_XFACE = 191
const AV_CODEC_ID_SGIRLE = 192
const AV_CODEC_ID_MVC1 = 193
const AV_CODEC_ID_MVC2 = 194
const AV_CODEC_ID_SNOW = 195
const AV_CODEC_ID_WEBP = 196
const AV_CODEC_ID_SMVJPEG = 197
const AV_CODEC_ID_HEVC = 198
const AV_CODEC_ID_FIRST_AUDIO = 65536
const AV_CODEC_ID_PCM_S16LE = 65536
const AV_CODEC_ID_PCM_S16BE = 65537
const AV_CODEC_ID_PCM_U16LE = 65538
const AV_CODEC_ID_PCM_U16BE = 65539
const AV_CODEC_ID_PCM_S8 = 65540
const AV_CODEC_ID_PCM_U8 = 65541
const AV_CODEC_ID_PCM_MULAW = 65542
const AV_CODEC_ID_PCM_ALAW = 65543
const AV_CODEC_ID_PCM_S32LE = 65544
const AV_CODEC_ID_PCM_S32BE = 65545
const AV_CODEC_ID_PCM_U32LE = 65546
const AV_CODEC_ID_PCM_U32BE = 65547
const AV_CODEC_ID_PCM_S24LE = 65548
const AV_CODEC_ID_PCM_S24BE = 65549
const AV_CODEC_ID_PCM_U24LE = 65550
const AV_CODEC_ID_PCM_U24BE = 65551
const AV_CODEC_ID_PCM_S24DAUD = 65552
const AV_CODEC_ID_PCM_ZORK = 65553
const AV_CODEC_ID_PCM_S16LE_PLANAR = 65554
const AV_CODEC_ID_PCM_DVD = 65555
const AV_CODEC_ID_PCM_F32BE = 65556
const AV_CODEC_ID_PCM_F32LE = 65557
const AV_CODEC_ID_PCM_F64BE = 65558
const AV_CODEC_ID_PCM_F64LE = 65559
const AV_CODEC_ID_PCM_BLURAY = 65560
const AV_CODEC_ID_PCM_LXF = 65561
const AV_CODEC_ID_S302M = 65562
const AV_CODEC_ID_PCM_S8_PLANAR = 65563
const AV_CODEC_ID_PCM_S24LE_PLANAR_DEPRECATED = 65564
const AV_CODEC_ID_PCM_S32LE_PLANAR_DEPRECATED = 65565
const AV_CODEC_ID_PCM_S24LE_PLANAR = 65566
const AV_CODEC_ID_PCM_S32LE_PLANAR = 65567
const AV_CODEC_ID_PCM_S16BE_PLANAR = 65568
const AV_CODEC_ID_ADPCM_IMA_QT = 69632
const AV_CODEC_ID_ADPCM_IMA_WAV = 69633
const AV_CODEC_ID_ADPCM_IMA_DK3 = 69634
const AV_CODEC_ID_ADPCM_IMA_DK4 = 69635
const AV_CODEC_ID_ADPCM_IMA_WS = 69636
const AV_CODEC_ID_ADPCM_IMA_SMJPEG = 69637
const AV_CODEC_ID_ADPCM_MS = 69638
const AV_CODEC_ID_ADPCM_4XM = 69639
const AV_CODEC_ID_ADPCM_XA = 69640
const AV_CODEC_ID_ADPCM_ADX = 69641
const AV_CODEC_ID_ADPCM_EA = 69642
const AV_CODEC_ID_ADPCM_G726 = 69643
const AV_CODEC_ID_ADPCM_CT = 69644
const AV_CODEC_ID_ADPCM_SWF = 69645
const AV_CODEC_ID_ADPCM_YAMAHA = 69646
const AV_CODEC_ID_ADPCM_SBPRO_4 = 69647
const AV_CODEC_ID_ADPCM_SBPRO_3 = 69648
const AV_CODEC_ID_ADPCM_SBPRO_2 = 69649
const AV_CODEC_ID_ADPCM_THP = 69650
const AV_CODEC_ID_ADPCM_IMA_AMV = 69651
const AV_CODEC_ID_ADPCM_EA_R1 = 69652
const AV_CODEC_ID_ADPCM_EA_R3 = 69653
const AV_CODEC_ID_ADPCM_EA_R2 = 69654
const AV_CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
const AV_CODEC_ID_ADPCM_IMA_EA_EACS = 69656
const AV_CODEC_ID_ADPCM_EA_XAS = 69657
const AV_CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
const AV_CODEC_ID_ADPCM_IMA_ISS = 69659
const AV_CODEC_ID_ADPCM_G722 = 69660
const AV_CODEC_ID_ADPCM_IMA_APC = 69661
const AV_CODEC_ID_VIMA = 69662
const AV_CODEC_ID_ADPCM_AFC = 69663
const AV_CODEC_ID_ADPCM_IMA_OKI = 69664
const AV_CODEC_ID_ADPCM_DTK = 69665
const AV_CODEC_ID_ADPCM_IMA_RAD = 69666
const AV_CODEC_ID_ADPCM_G726LE = 69667
const AV_CODEC_ID_AMR_NB = 73728
const AV_CODEC_ID_AMR_WB = 73729
const AV_CODEC_ID_RA_144 = 77824
const AV_CODEC_ID_RA_288 = 77825
const AV_CODEC_ID_ROQ_DPCM = 81920
const AV_CODEC_ID_INTERPLAY_DPCM = 81921
const AV_CODEC_ID_XAN_DPCM = 81922
const AV_CODEC_ID_SOL_DPCM = 81923
const AV_CODEC_ID_MP2 = 86016
const AV_CODEC_ID_MP3 = 86017
const AV_CODEC_ID_AAC = 86018
const AV_CODEC_ID_AC3 = 86019
const AV_CODEC_ID_DTS = 86020
const AV_CODEC_ID_VORBIS = 86021
const AV_CODEC_ID_DVAUDIO = 86022
const AV_CODEC_ID_WMAV1 = 86023
const AV_CODEC_ID_WMAV2 = 86024
const AV_CODEC_ID_MACE3 = 86025
const AV_CODEC_ID_MACE6 = 86026
const AV_CODEC_ID_VMDAUDIO = 86027
const AV_CODEC_ID_FLAC = 86028
const AV_CODEC_ID_MP3ADU = 86029
const AV_CODEC_ID_MP3ON4 = 86030
const AV_CODEC_ID_SHORTEN = 86031
const AV_CODEC_ID_ALAC = 86032
const AV_CODEC_ID_WESTWOOD_SND1 = 86033
const AV_CODEC_ID_GSM = 86034
const AV_CODEC_ID_QDM2 = 86035
const AV_CODEC_ID_COOK = 86036
const AV_CODEC_ID_TRUESPEECH = 86037
const AV_CODEC_ID_TTA = 86038
const AV_CODEC_ID_SMACKAUDIO = 86039
const AV_CODEC_ID_QCELP = 86040
const AV_CODEC_ID_WAVPACK = 86041
const AV_CODEC_ID_DSICINAUDIO = 86042
const AV_CODEC_ID_IMC = 86043
const AV_CODEC_ID_MUSEPACK7 = 86044
const AV_CODEC_ID_MLP = 86045
const AV_CODEC_ID_GSM_MS = 86046
const AV_CODEC_ID_ATRAC3 = 86047
const AV_CODEC_ID_VOXWARE = 86048
const AV_CODEC_ID_APE = 86049
const AV_CODEC_ID_NELLYMOSER = 86050
const AV_CODEC_ID_MUSEPACK8 = 86051
const AV_CODEC_ID_SPEEX = 86052
const AV_CODEC_ID_WMAVOICE = 86053
const AV_CODEC_ID_WMAPRO = 86054
const AV_CODEC_ID_WMALOSSLESS = 86055
const AV_CODEC_ID_ATRAC3P = 86056
const AV_CODEC_ID_EAC3 = 86057
const AV_CODEC_ID_SIPR = 86058
const AV_CODEC_ID_MP1 = 86059
const AV_CODEC_ID_TWINVQ = 86060
const AV_CODEC_ID_TRUEHD = 86061
const AV_CODEC_ID_MP4ALS = 86062
const AV_CODEC_ID_ATRAC1 = 86063
const AV_CODEC_ID_BINKAUDIO_RDFT = 86064
const AV_CODEC_ID_BINKAUDIO_DCT = 86065
const AV_CODEC_ID_AAC_LATM = 86066
const AV_CODEC_ID_QDMC = 86067
const AV_CODEC_ID_CELT = 86068
const AV_CODEC_ID_G723_1 = 86069
const AV_CODEC_ID_G729 = 86070
const AV_CODEC_ID_8SVX_EXP = 86071
const AV_CODEC_ID_8SVX_FIB = 86072
const AV_CODEC_ID_BMV_AUDIO = 86073
const AV_CODEC_ID_RALF = 86074
const AV_CODEC_ID_IAC = 86075
const AV_CODEC_ID_ILBC = 86076
const AV_CODEC_ID_OPUS_DEPRECATED = 86077
const AV_CODEC_ID_COMFORT_NOISE = 86078
const AV_CODEC_ID_TAK_DEPRECATED = 86079
const AV_CODEC_ID_METASOUND = 86080
const AV_CODEC_ID_FFWAVESYNTH = 86081
const AV_CODEC_ID_SONIC = 86082
const AV_CODEC_ID_SONIC_LS = 86083
const AV_CODEC_ID_PAF_AUDIO = 86084
const AV_CODEC_ID_OPUS = 86085
const AV_CODEC_ID_TAK = 86086
const AV_CODEC_ID_EVRC = 86087
const AV_CODEC_ID_SMV = 86088
const AV_CODEC_ID_FIRST_SUBTITLE = 94208
const AV_CODEC_ID_DVD_SUBTITLE = 94208
const AV_CODEC_ID_DVB_SUBTITLE = 94209
const AV_CODEC_ID_TEXT = 94210
const AV_CODEC_ID_XSUB = 94211
const AV_CODEC_ID_SSA = 94212
const AV_CODEC_ID_MOV_TEXT = 94213
const AV_CODEC_ID_HDMV_PGS_SUBTITLE = 94214
const AV_CODEC_ID_DVB_TELETEXT = 94215
const AV_CODEC_ID_SRT = 94216
const AV_CODEC_ID_MICRODVD = 94217
const AV_CODEC_ID_EIA_608 = 94218
const AV_CODEC_ID_JACOSUB = 94219
const AV_CODEC_ID_SAMI = 94220
const AV_CODEC_ID_REALTEXT = 94221
const AV_CODEC_ID_SUBVIEWER1 = 94222
const AV_CODEC_ID_SUBVIEWER = 94223
const AV_CODEC_ID_SUBRIP = 94224
const AV_CODEC_ID_WEBVTT = 94225
const AV_CODEC_ID_MPL2 = 94226
const AV_CODEC_ID_VPLAYER = 94227
const AV_CODEC_ID_PJS = 94228
const AV_CODEC_ID_ASS = 94229
const AV_CODEC_ID_FIRST_UNKNOWN = 98304
const AV_CODEC_ID_TTF = 98304
const AV_CODEC_ID_BINTEXT = 98305
const AV_CODEC_ID_XBIN = 98306
const AV_CODEC_ID_IDF = 98307
const AV_CODEC_ID_OTF = 98308
const AV_CODEC_ID_SMPTE_KLV = 98309
const AV_CODEC_ID_DVD_NAV = 98310
const AV_CODEC_ID_PROBE = 102400
const AV_CODEC_ID_MPEG2TS = 131072
const AV_CODEC_ID_MPEG4SYSTEMS = 131073
const AV_CODEC_ID_FFMETADATA = 135168
const CODEC_ID_NONE = 0
const CODEC_ID_MPEG1VIDEO = 1
const CODEC_ID_MPEG2VIDEO = 2
const CODEC_ID_MPEG2VIDEO_XVMC = 3
const CODEC_ID_H261 = 4
const CODEC_ID_H263 = 5
const CODEC_ID_RV10 = 6
const CODEC_ID_RV20 = 7
const CODEC_ID_MJPEG = 8
const CODEC_ID_MJPEGB = 9
const CODEC_ID_LJPEG = 10
const CODEC_ID_SP5X = 11
const CODEC_ID_JPEGLS = 12
const CODEC_ID_MPEG4 = 13
const CODEC_ID_RAWVIDEO = 14
const CODEC_ID_MSMPEG4V1 = 15
const CODEC_ID_MSMPEG4V2 = 16
const CODEC_ID_MSMPEG4V3 = 17
const CODEC_ID_WMV1 = 18
const CODEC_ID_WMV2 = 19
const CODEC_ID_H263P = 20
const CODEC_ID_H263I = 21
const CODEC_ID_FLV1 = 22
const CODEC_ID_SVQ1 = 23
const CODEC_ID_SVQ3 = 24
const CODEC_ID_DVVIDEO = 25
const CODEC_ID_HUFFYUV = 26
const CODEC_ID_CYUV = 27
const CODEC_ID_H264 = 28
const CODEC_ID_INDEO3 = 29
const CODEC_ID_VP3 = 30
const CODEC_ID_THEORA = 31
const CODEC_ID_ASV1 = 32
const CODEC_ID_ASV2 = 33
const CODEC_ID_FFV1 = 34
const CODEC_ID_4XM = 35
const CODEC_ID_VCR1 = 36
const CODEC_ID_CLJR = 37
const CODEC_ID_MDEC = 38
const CODEC_ID_ROQ = 39
const CODEC_ID_INTERPLAY_VIDEO = 40
const CODEC_ID_XAN_WC3 = 41
const CODEC_ID_XAN_WC4 = 42
const CODEC_ID_RPZA = 43
const CODEC_ID_CINEPAK = 44
const CODEC_ID_WS_VQA = 45
const CODEC_ID_MSRLE = 46
const CODEC_ID_MSVIDEO1 = 47
const CODEC_ID_IDCIN = 48
const CODEC_ID_8BPS = 49
const CODEC_ID_SMC = 50
const CODEC_ID_FLIC = 51
const CODEC_ID_TRUEMOTION1 = 52
const CODEC_ID_VMDVIDEO = 53
const CODEC_ID_MSZH = 54
const CODEC_ID_ZLIB = 55
const CODEC_ID_QTRLE = 56
const CODEC_ID_TSCC = 57
const CODEC_ID_ULTI = 58
const CODEC_ID_QDRAW = 59
const CODEC_ID_VIXL = 60
const CODEC_ID_QPEG = 61
const CODEC_ID_PNG = 62
const CODEC_ID_PPM = 63
const CODEC_ID_PBM = 64
const CODEC_ID_PGM = 65
const CODEC_ID_PGMYUV = 66
const CODEC_ID_PAM = 67
const CODEC_ID_FFVHUFF = 68
const CODEC_ID_RV30 = 69
const CODEC_ID_RV40 = 70
const CODEC_ID_VC1 = 71
const CODEC_ID_WMV3 = 72
const CODEC_ID_LOCO = 73
const CODEC_ID_WNV1 = 74
const CODEC_ID_AASC = 75
const CODEC_ID_INDEO2 = 76
const CODEC_ID_FRAPS = 77
const CODEC_ID_TRUEMOTION2 = 78
const CODEC_ID_BMP = 79
const CODEC_ID_CSCD = 80
const CODEC_ID_MMVIDEO = 81
const CODEC_ID_ZMBV = 82
const CODEC_ID_AVS = 83
const CODEC_ID_SMACKVIDEO = 84
const CODEC_ID_NUV = 85
const CODEC_ID_KMVC = 86
const CODEC_ID_FLASHSV = 87
const CODEC_ID_CAVS = 88
const CODEC_ID_JPEG2000 = 89
const CODEC_ID_VMNC = 90
const CODEC_ID_VP5 = 91
const CODEC_ID_VP6 = 92
const CODEC_ID_VP6F = 93
const CODEC_ID_TARGA = 94
const CODEC_ID_DSICINVIDEO = 95
const CODEC_ID_TIERTEXSEQVIDEO = 96
const CODEC_ID_TIFF = 97
const CODEC_ID_GIF = 98
const CODEC_ID_DXA = 99
const CODEC_ID_DNXHD = 100
const CODEC_ID_THP = 101
const CODEC_ID_SGI = 102
const CODEC_ID_C93 = 103
const CODEC_ID_BETHSOFTVID = 104
const CODEC_ID_PTX = 105
const CODEC_ID_TXD = 106
const CODEC_ID_VP6A = 107
const CODEC_ID_AMV = 108
const CODEC_ID_VB = 109
const CODEC_ID_PCX = 110
const CODEC_ID_SUNRAST = 111
const CODEC_ID_INDEO4 = 112
const CODEC_ID_INDEO5 = 113
const CODEC_ID_MIMIC = 114
const CODEC_ID_RL2 = 115
const CODEC_ID_ESCAPE124 = 116
const CODEC_ID_DIRAC = 117
const CODEC_ID_BFI = 118
const CODEC_ID_CMV = 119
const CODEC_ID_MOTIONPIXELS = 120
const CODEC_ID_TGV = 121
const CODEC_ID_TGQ = 122
const CODEC_ID_TQI = 123
const CODEC_ID_AURA = 124
const CODEC_ID_AURA2 = 125
const CODEC_ID_V210X = 126
const CODEC_ID_TMV = 127
const CODEC_ID_V210 = 128
const CODEC_ID_DPX = 129
const CODEC_ID_MAD = 130
const CODEC_ID_FRWU = 131
const CODEC_ID_FLASHSV2 = 132
const CODEC_ID_CDGRAPHICS = 133
const CODEC_ID_R210 = 134
const CODEC_ID_ANM = 135
const CODEC_ID_BINKVIDEO = 136
const CODEC_ID_IFF_ILBM = 137
const CODEC_ID_IFF_BYTERUN1 = 138
const CODEC_ID_KGV1 = 139
const CODEC_ID_YOP = 140
const CODEC_ID_VP8 = 141
const CODEC_ID_PICTOR = 142
const CODEC_ID_ANSI = 143
const CODEC_ID_A64_MULTI = 144
const CODEC_ID_A64_MULTI5 = 145
const CODEC_ID_R10K = 146
const CODEC_ID_MXPEG = 147
const CODEC_ID_LAGARITH = 148
const CODEC_ID_PRORES = 149
const CODEC_ID_JV = 150
const CODEC_ID_DFA = 151
const CODEC_ID_WMV3IMAGE = 152
const CODEC_ID_VC1IMAGE = 153
const CODEC_ID_UTVIDEO = 154
const CODEC_ID_BMV_VIDEO = 155
const CODEC_ID_VBLE = 156
const CODEC_ID_DXTORY = 157
const CODEC_ID_V410 = 158
const CODEC_ID_XWD = 159
const CODEC_ID_CDXL = 160
const CODEC_ID_XBM = 161
const CODEC_ID_ZEROCODEC = 162
const CODEC_ID_MSS1 = 163
const CODEC_ID_MSA1 = 164
const CODEC_ID_TSCC2 = 165
const CODEC_ID_MTS2 = 166
const CODEC_ID_CLLC = 167
const CODEC_ID_Y41P = 168
const CODEC_ID_ESCAPE130 = 169
const CODEC_ID_EXR = 170
const CODEC_ID_AVRP = 171
const CODEC_ID_G2M = 172
const CODEC_ID_AVUI = 173
const CODEC_ID_AYUV = 174
const CODEC_ID_V308 = 175
const CODEC_ID_V408 = 176
const CODEC_ID_YUV4 = 177
const CODEC_ID_SANM = 178
const CODEC_ID_PAF_VIDEO = 179
const CODEC_ID_SNOW = 195
const CODEC_ID_FIRST_AUDIO = 65536
const CODEC_ID_PCM_S16LE = 65536
const CODEC_ID_PCM_S16BE = 65537
const CODEC_ID_PCM_U16LE = 65538
const CODEC_ID_PCM_U16BE = 65539
const CODEC_ID_PCM_S8 = 65540
const CODEC_ID_PCM_U8 = 65541
const CODEC_ID_PCM_MULAW = 65542
const CODEC_ID_PCM_ALAW = 65543
const CODEC_ID_PCM_S32LE = 65544
const CODEC_ID_PCM_S32BE = 65545
const CODEC_ID_PCM_U32LE = 65546
const CODEC_ID_PCM_U32BE = 65547
const CODEC_ID_PCM_S24LE = 65548
const CODEC_ID_PCM_S24BE = 65549
const CODEC_ID_PCM_U24LE = 65550
const CODEC_ID_PCM_U24BE = 65551
const CODEC_ID_PCM_S24DAUD = 65552
const CODEC_ID_PCM_ZORK = 65553
const CODEC_ID_PCM_S16LE_PLANAR = 65554
const CODEC_ID_PCM_DVD = 65555
const CODEC_ID_PCM_F32BE = 65556
const CODEC_ID_PCM_F32LE = 65557
const CODEC_ID_PCM_F64BE = 65558
const CODEC_ID_PCM_F64LE = 65559
const CODEC_ID_PCM_BLURAY = 65560
const CODEC_ID_PCM_LXF = 65561
const CODEC_ID_S302M = 65562
const CODEC_ID_PCM_S8_PLANAR = 65563
const CODEC_ID_ADPCM_IMA_QT = 69632
const CODEC_ID_ADPCM_IMA_WAV = 69633
const CODEC_ID_ADPCM_IMA_DK3 = 69634
const CODEC_ID_ADPCM_IMA_DK4 = 69635
const CODEC_ID_ADPCM_IMA_WS = 69636
const CODEC_ID_ADPCM_IMA_SMJPEG = 69637
const CODEC_ID_ADPCM_MS = 69638
const CODEC_ID_ADPCM_4XM = 69639
const CODEC_ID_ADPCM_XA = 69640
const CODEC_ID_ADPCM_ADX = 69641
const CODEC_ID_ADPCM_EA = 69642
const CODEC_ID_ADPCM_G726 = 69643
const CODEC_ID_ADPCM_CT = 69644
const CODEC_ID_ADPCM_SWF = 69645
const CODEC_ID_ADPCM_YAMAHA = 69646
const CODEC_ID_ADPCM_SBPRO_4 = 69647
const CODEC_ID_ADPCM_SBPRO_3 = 69648
const CODEC_ID_ADPCM_SBPRO_2 = 69649
const CODEC_ID_ADPCM_THP = 69650
const CODEC_ID_ADPCM_IMA_AMV = 69651
const CODEC_ID_ADPCM_EA_R1 = 69652
const CODEC_ID_ADPCM_EA_R3 = 69653
const CODEC_ID_ADPCM_EA_R2 = 69654
const CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
const CODEC_ID_ADPCM_IMA_EA_EACS = 69656
const CODEC_ID_ADPCM_EA_XAS = 69657
const CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
const CODEC_ID_ADPCM_IMA_ISS = 69659
const CODEC_ID_ADPCM_G722 = 69660
const CODEC_ID_ADPCM_IMA_APC = 69661
const CODEC_ID_VIMA = 69662
const CODEC_ID_AMR_NB = 73728
const CODEC_ID_AMR_WB = 73729
const CODEC_ID_RA_144 = 77824
const CODEC_ID_RA_288 = 77825
const CODEC_ID_ROQ_DPCM = 81920
const CODEC_ID_INTERPLAY_DPCM = 81921
const CODEC_ID_XAN_DPCM = 81922
const CODEC_ID_SOL_DPCM = 81923
const CODEC_ID_MP2 = 86016
const CODEC_ID_MP3 = 86017
const CODEC_ID_AAC = 86018
const CODEC_ID_AC3 = 86019
const CODEC_ID_DTS = 86020
const CODEC_ID_VORBIS = 86021
const CODEC_ID_DVAUDIO = 86022
const CODEC_ID_WMAV1 = 86023
const CODEC_ID_WMAV2 = 86024
const CODEC_ID_MACE3 = 86025
const CODEC_ID_MACE6 = 86026
const CODEC_ID_VMDAUDIO = 86027
const CODEC_ID_FLAC = 86028
const CODEC_ID_MP3ADU = 86029
const CODEC_ID_MP3ON4 = 86030
const CODEC_ID_SHORTEN = 86031
const CODEC_ID_ALAC = 86032
const CODEC_ID_WESTWOOD_SND1 = 86033
const CODEC_ID_GSM = 86034
const CODEC_ID_QDM2 = 86035
const CODEC_ID_COOK = 86036
const CODEC_ID_TRUESPEECH = 86037
const CODEC_ID_TTA = 86038
const CODEC_ID_SMACKAUDIO = 86039
const CODEC_ID_QCELP = 86040
const CODEC_ID_WAVPACK = 86041
const CODEC_ID_DSICINAUDIO = 86042
const CODEC_ID_IMC = 86043
const CODEC_ID_MUSEPACK7 = 86044
const CODEC_ID_MLP = 86045
const CODEC_ID_GSM_MS = 86046
const CODEC_ID_ATRAC3 = 86047
const CODEC_ID_VOXWARE = 86048
const CODEC_ID_APE = 86049
const CODEC_ID_NELLYMOSER = 86050
const CODEC_ID_MUSEPACK8 = 86051
const CODEC_ID_SPEEX = 86052
const CODEC_ID_WMAVOICE = 86053
const CODEC_ID_WMAPRO = 86054
const CODEC_ID_WMALOSSLESS = 86055
const CODEC_ID_ATRAC3P = 86056
const CODEC_ID_EAC3 = 86057
const CODEC_ID_SIPR = 86058
const CODEC_ID_MP1 = 86059
const CODEC_ID_TWINVQ = 86060
const CODEC_ID_TRUEHD = 86061
const CODEC_ID_MP4ALS = 86062
const CODEC_ID_ATRAC1 = 86063
const CODEC_ID_BINKAUDIO_RDFT = 86064
const CODEC_ID_BINKAUDIO_DCT = 86065
const CODEC_ID_AAC_LATM = 86066
const CODEC_ID_QDMC = 86067
const CODEC_ID_CELT = 86068
const CODEC_ID_G723_1 = 86069
const CODEC_ID_G729 = 86070
const CODEC_ID_8SVX_EXP = 86071
const CODEC_ID_8SVX_FIB = 86072
const CODEC_ID_BMV_AUDIO = 86073
const CODEC_ID_RALF = 86074
const CODEC_ID_IAC = 86075
const CODEC_ID_ILBC = 86076
const CODEC_ID_FFWAVESYNTH = 86077
const CODEC_ID_SONIC = 86078
const CODEC_ID_SONIC_LS = 86079
const CODEC_ID_PAF_AUDIO = 86080
const CODEC_ID_OPUS = 86081
const CODEC_ID_FIRST_SUBTITLE = 94208
const CODEC_ID_DVD_SUBTITLE = 94208
const CODEC_ID_DVB_SUBTITLE = 94209
const CODEC_ID_TEXT = 94210
const CODEC_ID_XSUB = 94211
const CODEC_ID_SSA = 94212
const CODEC_ID_MOV_TEXT = 94213
const CODEC_ID_HDMV_PGS_SUBTITLE = 94214
const CODEC_ID_DVB_TELETEXT = 94215
const CODEC_ID_SRT = 94216
const CODEC_ID_MICRODVD = 94217
const CODEC_ID_EIA_608 = 94218
const CODEC_ID_JACOSUB = 94219
const CODEC_ID_SAMI = 94220
const CODEC_ID_REALTEXT = 94221
const CODEC_ID_SUBVIEWER = 94222
const CODEC_ID_FIRST_UNKNOWN = 98304
const CODEC_ID_TTF = 98304
const CODEC_ID_BINTEXT = 98305
const CODEC_ID_XBIN = 98306
const CODEC_ID_IDF = 98307
const CODEC_ID_OTF = 98308
const CODEC_ID_PROBE = 102400
const CODEC_ID_MPEG2TS = 131072
const CODEC_ID_MPEG4SYSTEMS = 131073
const CODEC_ID_FFMETADATA = 135168
# end enum ANONYMOUS_1
# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 Uint32
const ME_ZERO = 1
const ME_FULL = 2
const ME_LOG = 3
const ME_PHODS = 4
const ME_EPZS = 5
const ME_X1 = 6
const ME_HEX = 7
const ME_UMH = 8
const ME_TESA = 9
const ME_ITER = 50
# end enum ANONYMOUS_2
# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 Cint
const AVDISCARD_NONE = -16
const AVDISCARD_DEFAULT = 0
const AVDISCARD_NONREF = 8
const AVDISCARD_BIDIR = 16
const AVDISCARD_NONKEY = 32
const AVDISCARD_ALL = 48
# end enum ANONYMOUS_3
# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 Uint32
const AVCOL_PRI_BT709 = 1
const AVCOL_PRI_UNSPECIFIED = 2
const AVCOL_PRI_BT470M = 4
const AVCOL_PRI_BT470BG = 5
const AVCOL_PRI_SMPTE170M = 6
const AVCOL_PRI_SMPTE240M = 7
const AVCOL_PRI_FILM = 8
const AVCOL_PRI_NB = 9
# end enum ANONYMOUS_4
# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 Uint32
const AVCOL_TRC_BT709 = 1
const AVCOL_TRC_UNSPECIFIED = 2
const AVCOL_TRC_GAMMA22 = 4
const AVCOL_TRC_GAMMA28 = 5
const AVCOL_TRC_SMPTE240M = 7
const AVCOL_TRC_NB = 8
# end enum ANONYMOUS_5
# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 Uint32
const AVCHROMA_LOC_UNSPECIFIED = 0
const AVCHROMA_LOC_LEFT = 1
const AVCHROMA_LOC_CENTER = 2
const AVCHROMA_LOC_TOPLEFT = 3
const AVCHROMA_LOC_TOP = 4
const AVCHROMA_LOC_BOTTOMLEFT = 5
const AVCHROMA_LOC_BOTTOM = 6
const AVCHROMA_LOC_NB = 7
# end enum ANONYMOUS_6
# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 Uint32
const AV_AUDIO_SERVICE_TYPE_MAIN = 0
const AV_AUDIO_SERVICE_TYPE_EFFECTS = 1
const AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2
const AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3
const AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4
const AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5
const AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6
const AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7
const AV_AUDIO_SERVICE_TYPE_KARAOKE = 8
const AV_AUDIO_SERVICE_TYPE_NB = 9
# end enum ANONYMOUS_7
# begin enum ANONYMOUS_8
typealias ANONYMOUS_8 Uint32
const AV_PKT_DATA_PALETTE = 0
const AV_PKT_DATA_NEW_EXTRADATA = 1
const AV_PKT_DATA_PARAM_CHANGE = 2
const AV_PKT_DATA_H263_MB_INFO = 3
const AV_PKT_DATA_SKIP_SAMPLES = 70
const AV_PKT_DATA_JP_DUALMONO = 71
const AV_PKT_DATA_STRINGS_METADATA = 72
const AV_PKT_DATA_SUBTITLE_POSITION = 73
const AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL = 74
const AV_PKT_DATA_WEBVTT_IDENTIFIER = 75
const AV_PKT_DATA_WEBVTT_SETTINGS = 76
# end enum ANONYMOUS_8
# begin enum ANONYMOUS_9
typealias ANONYMOUS_9 Uint32
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1
const AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2
const AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4
const AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8
# end enum ANONYMOUS_9
# begin enum ANONYMOUS_10
typealias ANONYMOUS_10 Uint32
const AV_FIELD_UNKNOWN = 0
const AV_FIELD_PROGRESSIVE = 1
const AV_FIELD_TT = 2
const AV_FIELD_BB = 3
const AV_FIELD_TB = 4
const AV_FIELD_BT = 5
# end enum ANONYMOUS_10
# begin enum ANONYMOUS_11
typealias ANONYMOUS_11 Uint32
const SUBTITLE_NONE = 0
const SUBTITLE_BITMAP = 1
const SUBTITLE_TEXT = 2
const SUBTITLE_ASS = 3
# end enum ANONYMOUS_11
# begin enum ANONYMOUS_12
typealias ANONYMOUS_12 Uint32
const AV_PICTURE_STRUCTURE_UNKNOWN = 0
const AV_PICTURE_STRUCTURE_TOP_FIELD = 1
const AV_PICTURE_STRUCTURE_BOTTOM_FIELD = 2
const AV_PICTURE_STRUCTURE_FRAME = 3
# end enum ANONYMOUS_12
# begin enum ANONYMOUS_13
typealias ANONYMOUS_13 Uint32
const AV_LOCK_CREATE = 0
const AV_LOCK_OBTAIN = 1
const AV_LOCK_RELEASE = 2
const AV_LOCK_DESTROY = 3
# end enum ANONYMOUS_13
typealias FFTSample Cfloat
# begin enum ANONYMOUS_14
typealias ANONYMOUS_14 Uint32
const DFT_R2C = 0
const IDFT_C2R = 1
const IDFT_R2C = 2
const DFT_C2R = 3
# end enum ANONYMOUS_14
# begin enum ANONYMOUS_15
typealias ANONYMOUS_15 Uint32
const DCT_II = 0
const DCT_III = 1
const DCT_I = 2
const DST_I = 3
# end enum ANONYMOUS_15
const FF_DXVA2_WORKAROUND_SCALING_LIST_ZIGZAG = 1
const Picture = 
const FF_API_CAP_VDPAU = 1
const FF_API_BUFS_VDPAU = 1
const FF_VDPAU_STATE_USED_FOR_RENDER = 1
const FF_VDPAU_STATE_USED_FOR_REFERENCE = 2
typealias AVVDPAU_Render2 Ptr{Void}
const LIBAVCODEC_VERSION_MAJOR = 55
const LIBAVCODEC_VERSION_MINOR = 39
const LIBAVCODEC_VERSION_MICRO = 101
const LIBAVCODEC_VERSION_INT = 
const LIBAVCODEC_VERSION = 
const LIBAVCODEC_BUILD = 
const LIBAVCODEC_IDENT = "Lavc"
# Skipping MacroDefinition: FF_API_REQUEST_CHANNELS(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_ALLOC_CONTEXT(LIBAVCODEC_VERSION_MAJOR<55)
# Skipping MacroDefinition: FF_API_AVCODEC_OPEN(LIBAVCODEC_VERSION_MAJOR<55)
# Skipping MacroDefinition: FF_API_OLD_DECODE_AUDIO(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_OLD_TIMECODE(LIBAVCODEC_VERSION_MAJOR<55)
# Skipping MacroDefinition: FF_API_OLD_ENCODE_AUDIO(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_OLD_ENCODE_VIDEO(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_CODEC_ID(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_AVCODEC_RESAMPLE(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_DEINTERLACE(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_DESTRUCT_PACKET(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_GET_BUFFER(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_MISSING_SAMPLE(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_LOWRES(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_CAP_VDPAU(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_BUFS_VDPAU(LIBAVCODEC_VERSION_MAJOR<56)
# Skipping MacroDefinition: FF_API_VOXWARE(LIBAVCODEC_VERSION_MAJOR<56)
const AV_XVMC_ID = 0x1DC711C0
