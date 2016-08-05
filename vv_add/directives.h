//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _DIRECTIVES_H_
#define _DIRECTIVES_H_
//
//	Deal with the stable COEFF inputs
//
#define THREAD_TAG	HLS_ASSUME_STABLE(coeffs,"coeff_inputs");
#define	COEFFS	   (coeffs.read().table)

#define	PIPE_CMD		HLS_PIPELINE_LOOP(HARD_STALL ,PIPE,"MainPipe");
#define	PLAT_CMD		HLS_CONSTRAIN_LATENCY(0,-1,"MainLoop");
#define	LAT_CMD		HLS_CONSTRAIN_LATENCY(0,LAT,"MainLoop");

#ifdef LAT
#ifdef PIPE
#define WHILE_TAG		LAT_CMD; PIPE_CMD;
#else
#define WHILE_TAG		LAT_CMD
#endif
#else
#ifdef PIPE
#define WHILE_TAG		PLAT_CMD; PIPE_CMD;
#else
#define WHILE_TAG		PLAT_CMD
#endif
#endif


#ifdef DP
#define DP_TAG			HLS_DPOPT_REGION(0,"Accum")
#else
#define DP_TAG
#endif

#endif

