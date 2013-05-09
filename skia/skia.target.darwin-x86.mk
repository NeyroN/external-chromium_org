# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := skia_skia_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_WebKit_chromium_skia_webkit_gyp)/skia_webkit.stamp \
	$(call intermediates-dir-for,GYP,third_party_expat_expat_gyp)/expat.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

$(gyp_intermediate_dir)/analysis_canvas.cpp: $(LOCAL_PATH)/skia/ext/analysis_canvas.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/bitmap_platform_device_android.cpp: $(LOCAL_PATH)/skia/ext/bitmap_platform_device_android.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/convolver.cpp: $(LOCAL_PATH)/skia/ext/convolver.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/google_logging.cpp: $(LOCAL_PATH)/skia/ext/google_logging.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/image_operations.cpp: $(LOCAL_PATH)/skia/ext/image_operations.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/lazy_pixel_ref.cpp: $(LOCAL_PATH)/skia/ext/lazy_pixel_ref.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/paint_simplifier.cpp: $(LOCAL_PATH)/skia/ext/paint_simplifier.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/platform_canvas.cpp: $(LOCAL_PATH)/skia/ext/platform_canvas.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/platform_device.cpp: $(LOCAL_PATH)/skia/ext/platform_device.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/platform_device_linux.cpp: $(LOCAL_PATH)/skia/ext/platform_device_linux.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/skia_utils_base.cpp: $(LOCAL_PATH)/skia/ext/skia_utils_base.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/vector_canvas.cpp: $(LOCAL_PATH)/skia/ext/vector_canvas.cc
	mkdir -p $(@D); cp $< $@
LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/analysis_canvas.cpp \
	$(gyp_intermediate_dir)/bitmap_platform_device_android.cpp \
	$(gyp_intermediate_dir)/convolver.cpp \
	$(gyp_intermediate_dir)/google_logging.cpp \
	$(gyp_intermediate_dir)/image_operations.cpp \
	$(gyp_intermediate_dir)/lazy_pixel_ref.cpp \
	$(gyp_intermediate_dir)/paint_simplifier.cpp \
	$(gyp_intermediate_dir)/platform_canvas.cpp \
	$(gyp_intermediate_dir)/platform_device.cpp \
	$(gyp_intermediate_dir)/platform_device_linux.cpp \
	$(gyp_intermediate_dir)/skia_utils_base.cpp \
	$(gyp_intermediate_dir)/vector_canvas.cpp

GYP_COPIED_SOURCE_ORIGIN_DIRS := \
	$(LOCAL_PATH)/skia/ext

LOCAL_SRC_FILES := \
	third_party/skia/src/core/SkFlate.cpp \
	third_party/skia/src/images/SkScaledBitmapSampler.cpp \
	third_party/skia/src/opts/opts_check_SSE2.cpp \
	third_party/skia/src/ports/SkPurgeableMemoryBlock_none.cpp \
	third_party/skia/src/ports/FontHostConfiguration_android.cpp \
	third_party/skia/src/ports/SkFontHost_FreeType.cpp \
	third_party/skia/src/ports/SkFontHost_FreeType_common.cpp \
	third_party/skia/src/ports/SkFontHost_android.cpp \
	third_party/skia/src/ports/SkGlobalInitialization_chromium.cpp \
	third_party/skia/src/ports/SkOSFile_stdio.cpp \
	third_party/skia/src/ports/SkThread_pthread.cpp \
	third_party/skia/src/ports/SkTime_Unix.cpp \
	third_party/skia/src/sfnt/SkOTUtils.cpp \
	third_party/skia/src/utils/SkBase64.cpp \
	third_party/skia/src/utils/SkBitSet.cpp \
	third_party/skia/src/utils/SkDeferredCanvas.cpp \
	third_party/skia/src/utils/SkMatrix44.cpp \
	third_party/skia/src/utils/SkNullCanvas.cpp \
	third_party/skia/src/utils/SkNWayCanvas.cpp \
	third_party/skia/src/utils/SkPictureUtils.cpp \
	third_party/skia/src/utils/SkRTConf.cpp \
	skia/ext/SkMemory_new_handler.cpp \
	third_party/skia/src/core/Sk64.cpp \
	third_party/skia/src/core/SkAAClip.cpp \
	third_party/skia/src/core/SkAnnotation.cpp \
	third_party/skia/src/core/SkAdvancedTypefaceMetrics.cpp \
	third_party/skia/src/core/SkAlphaRuns.cpp \
	third_party/skia/src/core/SkBBoxHierarchy.cpp \
	third_party/skia/src/core/SkBBoxRecord.cpp \
	third_party/skia/src/core/SkBBoxHierarchyRecord.cpp \
	third_party/skia/src/core/SkBitmap.cpp \
	third_party/skia/src/core/SkBitmapHeap.cpp \
	third_party/skia/src/core/SkBitmapProcShader.cpp \
	third_party/skia/src/core/SkBitmapProcState.cpp \
	third_party/skia/src/core/SkBitmapProcState_matrixProcs.cpp \
	third_party/skia/src/core/SkBitmapSampler.cpp \
	third_party/skia/src/core/SkBitmap_scroll.cpp \
	third_party/skia/src/core/SkBlitMask_D32.cpp \
	third_party/skia/src/core/SkBlitRow_D16.cpp \
	third_party/skia/src/core/SkBlitRow_D32.cpp \
	third_party/skia/src/core/SkBlitRow_D4444.cpp \
	third_party/skia/src/core/SkBlitter.cpp \
	third_party/skia/src/core/SkBlitter_4444.cpp \
	third_party/skia/src/core/SkBlitter_A1.cpp \
	third_party/skia/src/core/SkBlitter_A8.cpp \
	third_party/skia/src/core/SkBlitter_ARGB32.cpp \
	third_party/skia/src/core/SkBlitter_RGB16.cpp \
	third_party/skia/src/core/SkBlitter_Sprite.cpp \
	third_party/skia/src/core/SkBuffer.cpp \
	third_party/skia/src/core/SkCanvas.cpp \
	third_party/skia/src/core/SkChunkAlloc.cpp \
	third_party/skia/src/core/SkClipStack.cpp \
	third_party/skia/src/core/SkColor.cpp \
	third_party/skia/src/core/SkColorFilter.cpp \
	third_party/skia/src/core/SkColorTable.cpp \
	third_party/skia/src/core/SkComposeShader.cpp \
	third_party/skia/src/core/SkConfig8888.cpp \
	third_party/skia/src/core/SkCordic.cpp \
	third_party/skia/src/core/SkCubicClipper.cpp \
	third_party/skia/src/core/SkData.cpp \
	third_party/skia/src/core/SkDataTable.cpp \
	third_party/skia/src/core/SkDebug.cpp \
	third_party/skia/src/core/SkDeque.cpp \
	third_party/skia/src/core/SkDevice.cpp \
	third_party/skia/src/core/SkDeviceProfile.cpp \
	third_party/skia/src/core/SkDither.cpp \
	third_party/skia/src/core/SkDraw.cpp \
	third_party/skia/src/core/SkEdgeBuilder.cpp \
	third_party/skia/src/core/SkEdgeClipper.cpp \
	third_party/skia/src/core/SkEdge.cpp \
	third_party/skia/src/core/SkError.cpp \
	third_party/skia/src/core/SkFDStream.cpp \
	third_party/skia/src/core/SkFilterProc.cpp \
	third_party/skia/src/core/SkFlattenable.cpp \
	third_party/skia/src/core/SkFlattenableBuffers.cpp \
	third_party/skia/src/core/SkFloat.cpp \
	third_party/skia/src/core/SkFloatBits.cpp \
	third_party/skia/src/core/SkFontHost.cpp \
	third_party/skia/src/core/SkFontDescriptor.cpp \
	third_party/skia/src/core/SkFontStream.cpp \
	third_party/skia/src/core/SkGeometry.cpp \
	third_party/skia/src/core/SkGlyphCache.cpp \
	third_party/skia/src/core/SkGraphics.cpp \
	third_party/skia/src/core/SkInstCnt.cpp \
	third_party/skia/src/core/SkImageFilter.cpp \
	third_party/skia/src/core/SkImageFilterUtils.cpp \
	third_party/skia/src/core/SkLineClipper.cpp \
	third_party/skia/src/core/SkMallocPixelRef.cpp \
	third_party/skia/src/core/SkMask.cpp \
	third_party/skia/src/core/SkMaskFilter.cpp \
	third_party/skia/src/core/SkMaskGamma.cpp \
	third_party/skia/src/core/SkMath.cpp \
	third_party/skia/src/core/SkMatrix.cpp \
	third_party/skia/src/core/SkMetaData.cpp \
	third_party/skia/src/core/SkOrderedReadBuffer.cpp \
	third_party/skia/src/core/SkOrderedWriteBuffer.cpp \
	third_party/skia/src/core/SkPackBits.cpp \
	third_party/skia/src/core/SkPaint.cpp \
	third_party/skia/src/core/SkPaintPriv.cpp \
	third_party/skia/src/core/SkPath.cpp \
	third_party/skia/src/core/SkPathEffect.cpp \
	third_party/skia/src/core/SkPathHeap.cpp \
	third_party/skia/src/core/SkPathMeasure.cpp \
	third_party/skia/src/core/SkPicture.cpp \
	third_party/skia/src/core/SkPictureFlat.cpp \
	third_party/skia/src/core/SkPicturePlayback.cpp \
	third_party/skia/src/core/SkPictureRecord.cpp \
	third_party/skia/src/core/SkPictureStateTree.cpp \
	third_party/skia/src/core/SkPixelRef.cpp \
	third_party/skia/src/core/SkPoint.cpp \
	third_party/skia/src/core/SkProcSpriteBlitter.cpp \
	third_party/skia/src/core/SkPtrRecorder.cpp \
	third_party/skia/src/core/SkQuadClipper.cpp \
	third_party/skia/src/core/SkRasterClip.cpp \
	third_party/skia/src/core/SkRasterizer.cpp \
	third_party/skia/src/core/SkRect.cpp \
	third_party/skia/src/core/SkRefCnt.cpp \
	third_party/skia/src/core/SkRefDict.cpp \
	third_party/skia/src/core/SkRegion.cpp \
	third_party/skia/src/core/SkRegion_path.cpp \
	third_party/skia/src/core/SkRRect.cpp \
	third_party/skia/src/core/SkRTree.cpp \
	third_party/skia/src/core/SkScalar.cpp \
	third_party/skia/src/core/SkScalerContext.cpp \
	third_party/skia/src/core/SkScan.cpp \
	third_party/skia/src/core/SkScan_AntiPath.cpp \
	third_party/skia/src/core/SkScan_Antihair.cpp \
	third_party/skia/src/core/SkScan_Hairline.cpp \
	third_party/skia/src/core/SkScan_Path.cpp \
	third_party/skia/src/core/SkShader.cpp \
	third_party/skia/src/core/SkSpriteBlitter_ARGB32.cpp \
	third_party/skia/src/core/SkSpriteBlitter_RGB16.cpp \
	third_party/skia/src/core/SkStream.cpp \
	third_party/skia/src/core/SkString.cpp \
	third_party/skia/src/core/SkStringUtils.cpp \
	third_party/skia/src/core/SkStroke.cpp \
	third_party/skia/src/core/SkStrokeRec.cpp \
	third_party/skia/src/core/SkStrokerPriv.cpp \
	third_party/skia/src/core/SkTileGrid.cpp \
	third_party/skia/src/core/SkTileGridPicture.cpp \
	third_party/skia/src/core/SkTLS.cpp \
	third_party/skia/src/core/SkTSearch.cpp \
	third_party/skia/src/core/SkTypeface.cpp \
	third_party/skia/src/core/SkTypefaceCache.cpp \
	third_party/skia/src/core/SkUnPreMultiply.cpp \
	third_party/skia/src/core/SkUtils.cpp \
	third_party/skia/src/core/SkWriter32.cpp \
	third_party/skia/src/core/SkXfermode.cpp \
	third_party/skia/src/image/SkDataPixelRef.cpp \
	third_party/skia/src/image/SkImage.cpp \
	third_party/skia/src/image/SkImagePriv.cpp \
	third_party/skia/src/image/SkImage_Picture.cpp \
	third_party/skia/src/image/SkImage_Raster.cpp \
	third_party/skia/src/image/SkSurface.cpp \
	third_party/skia/src/image/SkSurface_Picture.cpp \
	third_party/skia/src/image/SkSurface_Raster.cpp \
	third_party/skia/src/pipe/SkGPipeRead.cpp \
	third_party/skia/src/pipe/SkGPipeWrite.cpp \
	third_party/skia/src/lazy/SkBitmapFactory.cpp \
	third_party/skia/src/lazy/SkLazyPixelRef.cpp \
	third_party/skia/src/lazy/SkLruImageCache.cpp \
	third_party/skia/src/lazy/SkPurgeableMemoryBlock_common.cpp \
	third_party/skia/src/lazy/SkPurgeableImageCache.cpp \
	third_party/skia/src/pathops/SkAddIntersections.cpp \
	third_party/skia/src/pathops/SkDCubicIntersection.cpp \
	third_party/skia/src/pathops/SkDCubicLineIntersection.cpp \
	third_party/skia/src/pathops/SkDCubicToQuads.cpp \
	third_party/skia/src/pathops/SkDLineIntersection.cpp \
	third_party/skia/src/pathops/SkDQuadImplicit.cpp \
	third_party/skia/src/pathops/SkDQuadIntersection.cpp \
	third_party/skia/src/pathops/SkDQuadLineIntersection.cpp \
	third_party/skia/src/pathops/SkIntersections.cpp \
	third_party/skia/src/pathops/SkOpAngle.cpp \
	third_party/skia/src/pathops/SkOpContour.cpp \
	third_party/skia/src/pathops/SkOpEdgeBuilder.cpp \
	third_party/skia/src/pathops/SkOpSegment.cpp \
	third_party/skia/src/pathops/SkPathOpsBounds.cpp \
	third_party/skia/src/pathops/SkPathOpsCommon.cpp \
	third_party/skia/src/pathops/SkPathOpsCubic.cpp \
	third_party/skia/src/pathops/SkPathOpsDebug.cpp \
	third_party/skia/src/pathops/SkPathOpsLine.cpp \
	third_party/skia/src/pathops/SkPathOpsOp.cpp \
	third_party/skia/src/pathops/SkPathOpsPoint.cpp \
	third_party/skia/src/pathops/SkPathOpsQuad.cpp \
	third_party/skia/src/pathops/SkPathOpsRect.cpp \
	third_party/skia/src/pathops/SkPathOpsSimplify.cpp \
	third_party/skia/src/pathops/SkPathOpsTriangle.cpp \
	third_party/skia/src/pathops/SkPathOpsTypes.cpp \
	third_party/skia/src/pathops/SkPathWriter.cpp \
	third_party/skia/src/pathops/SkQuarticRoot.cpp \
	third_party/skia/src/pathops/SkReduceOrder.cpp \
	third_party/skia/src/effects/Sk1DPathEffect.cpp \
	third_party/skia/src/effects/Sk2DPathEffect.cpp \
	third_party/skia/src/effects/SkAvoidXfermode.cpp \
	third_party/skia/src/effects/SkArithmeticMode.cpp \
	third_party/skia/src/effects/SkBicubicImageFilter.cpp \
	third_party/skia/src/effects/SkBitmapSource.cpp \
	third_party/skia/src/effects/SkBlendImageFilter.cpp \
	third_party/skia/src/effects/SkBlurDrawLooper.cpp \
	third_party/skia/src/effects/SkBlurMask.cpp \
	third_party/skia/src/effects/SkBlurImageFilter.cpp \
	third_party/skia/src/effects/SkBlurMaskFilter.cpp \
	third_party/skia/src/effects/SkColorFilters.cpp \
	third_party/skia/src/effects/SkColorFilterImageFilter.cpp \
	third_party/skia/src/effects/SkColorMatrix.cpp \
	third_party/skia/src/effects/SkColorMatrixFilter.cpp \
	third_party/skia/src/effects/SkCornerPathEffect.cpp \
	third_party/skia/src/effects/SkDashPathEffect.cpp \
	third_party/skia/src/effects/SkDiscretePathEffect.cpp \
	third_party/skia/src/effects/SkDisplacementMapEffect.cpp \
	third_party/skia/src/effects/SkEmbossMask.cpp \
	third_party/skia/src/effects/SkEmbossMaskFilter.cpp \
	third_party/skia/src/effects/SkKernel33MaskFilter.cpp \
	third_party/skia/src/effects/SkLayerDrawLooper.cpp \
	third_party/skia/src/effects/SkLayerRasterizer.cpp \
	third_party/skia/src/effects/SkLightingImageFilter.cpp \
	third_party/skia/src/effects/SkMatrixConvolutionImageFilter.cpp \
	third_party/skia/src/effects/SkMergeImageFilter.cpp \
	third_party/skia/src/effects/SkMorphologyImageFilter.cpp \
	third_party/skia/src/effects/SkOffsetImageFilter.cpp \
	third_party/skia/src/effects/SkPaintFlagsDrawFilter.cpp \
	third_party/skia/src/effects/SkPerlinNoiseShader.cpp \
	third_party/skia/src/effects/SkPixelXorXfermode.cpp \
	third_party/skia/src/effects/SkPorterDuff.cpp \
	third_party/skia/src/effects/SkRectShaderImageFilter.cpp \
	third_party/skia/src/effects/SkStippleMaskFilter.cpp \
	third_party/skia/src/effects/SkTableColorFilter.cpp \
	third_party/skia/src/effects/SkTableMaskFilter.cpp \
	third_party/skia/src/effects/SkTestImageFilters.cpp \
	third_party/skia/src/effects/SkTransparentShader.cpp \
	third_party/skia/src/effects/SkMagnifierImageFilter.cpp \
	third_party/skia/src/effects/gradients/SkBitmapCache.cpp \
	third_party/skia/src/effects/gradients/SkClampRange.cpp \
	third_party/skia/src/effects/gradients/SkGradientShader.cpp \
	third_party/skia/src/effects/gradients/SkLinearGradient.cpp \
	third_party/skia/src/effects/gradients/SkRadialGradient.cpp \
	third_party/skia/src/effects/gradients/SkTwoPointRadialGradient.cpp \
	third_party/skia/src/effects/gradients/SkTwoPointConicalGradient.cpp \
	third_party/skia/src/effects/gradients/SkSweepGradient.cpp \
	third_party/skia/src/gpu/GrAAHairLinePathRenderer.cpp \
	third_party/skia/src/gpu/GrAAConvexPathRenderer.cpp \
	third_party/skia/src/gpu/GrAARectRenderer.cpp \
	third_party/skia/src/gpu/GrAddPathRenderers_default.cpp \
	third_party/skia/src/gpu/GrAllocPool.cpp \
	third_party/skia/src/gpu/GrAtlas.cpp \
	third_party/skia/src/gpu/GrBufferAllocPool.cpp \
	third_party/skia/src/gpu/GrCacheID.cpp \
	third_party/skia/src/gpu/GrClipData.cpp \
	third_party/skia/src/gpu/GrContext.cpp \
	third_party/skia/src/gpu/GrDefaultPathRenderer.cpp \
	third_party/skia/src/gpu/GrDrawState.cpp \
	third_party/skia/src/gpu/GrDrawTarget.cpp \
	third_party/skia/src/gpu/GrEffect.cpp \
	third_party/skia/src/gpu/GrGeometryBuffer.cpp \
	third_party/skia/src/gpu/GrClipMaskCache.cpp \
	third_party/skia/src/gpu/GrClipMaskManager.cpp \
	third_party/skia/src/gpu/GrGpu.cpp \
	third_party/skia/src/gpu/GrGpuFactory.cpp \
	third_party/skia/src/gpu/GrInOrderDrawBuffer.cpp \
	third_party/skia/src/gpu/GrMemory.cpp \
	third_party/skia/src/gpu/GrMemoryPool.cpp \
	third_party/skia/src/gpu/GrOvalRenderer.cpp \
	third_party/skia/src/gpu/GrPath.cpp \
	third_party/skia/src/gpu/GrPathRendererChain.cpp \
	third_party/skia/src/gpu/GrPathRenderer.cpp \
	third_party/skia/src/gpu/GrPathUtils.cpp \
	third_party/skia/src/gpu/GrRectanizer.cpp \
	third_party/skia/src/gpu/GrRenderTarget.cpp \
	third_party/skia/src/gpu/GrReducedClip.cpp \
	third_party/skia/src/gpu/GrResource.cpp \
	third_party/skia/src/gpu/GrResourceCache.cpp \
	third_party/skia/src/gpu/GrStencil.cpp \
	third_party/skia/src/gpu/GrStencilAndCoverPathRenderer.cpp \
	third_party/skia/src/gpu/GrStencilBuffer.cpp \
	third_party/skia/src/gpu/GrSWMaskHelper.cpp \
	third_party/skia/src/gpu/GrSoftwarePathRenderer.cpp \
	third_party/skia/src/gpu/GrSurface.cpp \
	third_party/skia/src/gpu/GrTextContext.cpp \
	third_party/skia/src/gpu/GrTextStrike.cpp \
	third_party/skia/src/gpu/GrTexture.cpp \
	third_party/skia/src/gpu/GrTextureAccess.cpp \
	third_party/skia/src/gpu/gr_unittests.cpp \
	third_party/skia/src/gpu/effects/GrConfigConversionEffect.cpp \
	third_party/skia/src/gpu/effects/GrConvolutionEffect.cpp \
	third_party/skia/src/gpu/effects/GrSimpleTextureEffect.cpp \
	third_party/skia/src/gpu/effects/GrSingleTextureEffect.cpp \
	third_party/skia/src/gpu/effects/GrTextureDomainEffect.cpp \
	third_party/skia/src/gpu/effects/GrTextureStripAtlas.cpp \
	third_party/skia/src/gpu/gl/GrGLBufferImpl.cpp \
	third_party/skia/src/gpu/gl/GrGLCaps.cpp \
	third_party/skia/src/gpu/gl/GrGLContext.cpp \
	third_party/skia/src/gpu/gl/GrGLCreateNativeInterface_none.cpp \
	third_party/skia/src/gpu/gl/GrGLDefaultInterface_none.cpp \
	third_party/skia/src/gpu/gl/GrGLEffect.cpp \
	third_party/skia/src/gpu/gl/GrGLExtensions.cpp \
	third_party/skia/src/gpu/gl/GrGLEffectMatrix.cpp \
	third_party/skia/src/gpu/gl/GrGLIndexBuffer.cpp \
	third_party/skia/src/gpu/gl/GrGLInterface.cpp \
	third_party/skia/src/gpu/gl/GrGLNoOpInterface.cpp \
	third_party/skia/src/gpu/gl/GrGLPath.cpp \
	third_party/skia/src/gpu/gl/GrGLProgram.cpp \
	third_party/skia/src/gpu/gl/GrGLProgramDesc.cpp \
	third_party/skia/src/gpu/gl/GrGLRenderTarget.cpp \
	third_party/skia/src/gpu/gl/GrGLShaderBuilder.cpp \
	third_party/skia/src/gpu/gl/GrGLSL.cpp \
	third_party/skia/src/gpu/gl/GrGLStencilBuffer.cpp \
	third_party/skia/src/gpu/gl/GrGLTexture.cpp \
	third_party/skia/src/gpu/gl/GrGLUtil.cpp \
	third_party/skia/src/gpu/gl/GrGLUniformManager.cpp \
	third_party/skia/src/gpu/gl/GrGLVertexArray.cpp \
	third_party/skia/src/gpu/gl/GrGLVertexBuffer.cpp \
	third_party/skia/src/gpu/gl/GrGpuGL.cpp \
	third_party/skia/src/gpu/gl/GrGpuGL_program.cpp \
	third_party/skia/src/gpu/SkGpuDevice.cpp \
	third_party/skia/src/gpu/SkGr.cpp \
	third_party/skia/src/gpu/SkGrFontScaler.cpp \
	third_party/skia/src/gpu/SkGrPixelRef.cpp \
	third_party/skia/src/gpu/SkGrTexturePixelRef.cpp \
	third_party/skia/src/image/SkImage_Gpu.cpp \
	third_party/skia/src/image/SkSurface_Gpu.cpp \
	third_party/skia/src/gpu/gl/SkGLContextHelper.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS := \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-fno-stack-protector \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_CFLAGS_C :=

MY_DEFS := \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_BUILD_NO_IMAGE_ENCODE' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DGR_STATIC_RECT_VB=1' \
	'-DGR_AGGRESSIVE_SHADER_OPTS=1' \
	'-DSK_DEFERRED_CANVAS_USES_GPIPE=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_ALLOW_OVER_32K_BITMAPS' \
	'-DSK_ALLOW_STATIC_GLOBAL_INITIALIZERS=0' \
	'-DSK_DISABLE_PIXELREF_LOCKCOUNT_BALANCE_CHECK' \
	'-DIGNORE_ROT_AA_RECT_OPT' \
	'-DSK_GAMMA_APPLY_TO_A8' \
	'-DSK_GAMMA_EXPONENT=1.4' \
	'-DSK_GAMMA_CONTRAST=0.0' \
	'-DHAVE_PTHREADS' \
	'-DOS_ANDROID' \
	'-DSK_BUILD_FOR_ANDROID_NDK' \
	'-DSK_DEFAULT_FONT_CACHE_LIMIT=(8*1024*1024)' \
	'-DUSE_CHROMIUM_SKIA' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/include/config \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/images \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/src/image \
	$(LOCAL_PATH)/third_party/skia/src/sfnt \
	$(LOCAL_PATH)/third_party/skia/src/utils \
	$(LOCAL_PATH)/third_party/skia/src/lazy \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/gpu/gl \
	$(LOCAL_PATH)/third_party/skia/src/gpu \
	$(LOCAL_PATH)/third_party/expat/files/lib \
	$(LOCAL_PATH)/third_party/zlib \
	$(GYP_ABS_ANDROID_TOP_DIR)/external/expat/lib \
	$(LOCAL_PATH)/third_party/freetype/include \
	$(GYP_ABS_ANDROID_TOP_DIR)/frameworks/wilhelm/include \
	$(GYP_ABS_ANDROID_TOP_DIR)/bionic \
	$(GYP_ABS_ANDROID_TOP_DIR)/external/stlport/stlport

LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES)

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor

### Rules for final target.

LOCAL_LDFLAGS := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-m32 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--gc-sections \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_STATIC_LIBRARIES :=

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: skia_skia_gyp

# Alias gyp target name.
.PHONY: skia
skia: skia_skia_gyp

include $(BUILD_STATIC_LIBRARY)
