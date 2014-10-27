// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package org.chromium.chrome.browser.findinpage;

import org.chromium.content_public.browser.WebContents;

/**
 * Allows issuing find in page related requests for a given WebContents.
 */
public class FindInPageBridge {
    private final WebContents mWebContents;
    private long mNativeFindInPageBridge;

    public FindInPageBridge(WebContents webContents) {
        assert webContents != null;
        mWebContents = webContents;
        mNativeFindInPageBridge = nativeInit(webContents);
    }

    /**
     * Destroys this instance so no further calls can be executed.
     */
    public void destroy() {
        nativeDestroy(mNativeFindInPageBridge);
        mNativeFindInPageBridge = 0;
    }

    /**
     * Starts the find operation by calling StartFinding on the ChromeTab.
     * This function does not block while a search is in progress.
     * Set a listener using setFindResultListener to receive the results.
     */
    public void startFinding(String searchString, boolean forwardDirection, boolean caseSensitive) {
        assert mNativeFindInPageBridge != 0;
        nativeStartFinding(mNativeFindInPageBridge, searchString, forwardDirection, caseSensitive);
    }

    /** Stops the current find operation. */
    public void stopFinding() {
        assert mNativeFindInPageBridge != 0;
        nativeStopFinding(mNativeFindInPageBridge);
    }

    /** Returns the most recent find text before the current one. */
    public String getPreviousFindText() {
        assert mNativeFindInPageBridge != 0;
        return nativeGetPreviousFindText(mNativeFindInPageBridge);
    }

    /** Asks the renderer to send the bounding boxes of current find matches. */
    public void requestFindMatchRects(int currentVersion) {
        assert mNativeFindInPageBridge != 0;
        nativeRequestFindMatchRects(mNativeFindInPageBridge, currentVersion);
    }

    /**
     * Selects and zooms to the nearest find result to the point (x,y),
     * where x and y are fractions of the content document's width and height.
     */
    public void activateNearestFindResult(float x, float y) {
        assert mNativeFindInPageBridge != 0;
        nativeActivateNearestFindResult(mNativeFindInPageBridge, x, y);
    }

    private native long nativeInit(WebContents webContents);

    private native void nativeDestroy(long nativeFindInPageBridge);

    private native void nativeStartFinding(long nativeFindInPageBridge, String searchString,
            boolean forwardDirection, boolean caseSensitive);

    private native void nativeStopFinding(long nativeFindInPageBridge);

    private native String nativeGetPreviousFindText(long nativeFindInPageBridge);

    private native void nativeRequestFindMatchRects(
            long nativeFindInPageBridge, int currentVersion);

    private native void nativeActivateNearestFindResult(
            long nativeFindInPageBridge, float x, float y);

}
