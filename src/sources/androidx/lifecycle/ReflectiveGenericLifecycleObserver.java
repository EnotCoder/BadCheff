package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {
    private final ClassesInfoCache.CallbackInfo mInfo;
    private final Object mWrapped;

    ReflectiveGenericLifecycleObserver(Object wrapped) {
        this.mWrapped = wrapped;
        this.mInfo = ClassesInfoCache.sInstance.getInfo(wrapped.getClass());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        this.mInfo.invokeCallbacks(source, event, this.mWrapped);
    }
}
