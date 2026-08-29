package androidx.core.app;

import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public interface OnPictureInPictureModeChangedProvider {
    void addOnPictureInPictureModeChangedListener(Consumer<PictureInPictureModeChangedInfo> consumer);

    void removeOnPictureInPictureModeChangedListener(Consumer<PictureInPictureModeChangedInfo> consumer);
}
