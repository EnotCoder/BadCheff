package kotlin.io.path;

import com.google.android.vending.expansion.downloader.impl.DownloaderService;
import java.nio.file.FileSystemLoopException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: PathTreeWalk.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0002J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0096\u0002JB\u0010\u0018\u001a\u00020\u0019*\b\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0018\u0010\u001f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0!\u0012\u0004\u0012\u00020\u00190 H\u0082H¢\u0006\u0002\u0010\"R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lkotlin/io/path/PathTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/nio/file/Path;", "start", "options", "", "Lkotlin/io/path/PathWalkOption;", "(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V", "followLinks", "", "getFollowLinks", "()Z", "includeDirectories", "getIncludeDirectories", "isBFS", "linkOptions", "Ljava/nio/file/LinkOption;", "getLinkOptions", "()[Ljava/nio/file/LinkOption;", "[Lkotlin/io/path/PathWalkOption;", "bfsIterator", "", "dfsIterator", "iterator", "yieldIfNeeded", "", "Lkotlin/sequences/SequenceScope;", "node", "Lkotlin/io/path/PathNode;", "entriesReader", "Lkotlin/io/path/DirectoryEntriesReader;", "entriesAction", "Lkotlin/Function1;", "", "(Lkotlin/sequences/SequenceScope;Lkotlin/io/path/PathNode;Lkotlin/io/path/DirectoryEntriesReader;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PathTreeWalk implements Sequence<Path> {
    private final PathWalkOption[] options;
    private final Path start;

    public PathTreeWalk(Path start, PathWalkOption[] options) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(options, "options");
        this.start = start;
        this.options = options;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getFollowLinks() {
        return ArraysKt.contains(this.options, PathWalkOption.FOLLOW_LINKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinkOption[] getLinkOptions() {
        return LinkFollowing.INSTANCE.toLinkOptions(getFollowLinks());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getIncludeDirectories() {
        return ArraysKt.contains(this.options, PathWalkOption.INCLUDE_DIRECTORIES);
    }

    private final boolean isBFS() {
        return ArraysKt.contains(this.options, PathWalkOption.BREADTH_FIRST);
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<Path> iterator() {
        return isBFS() ? bfsIterator() : dfsIterator();
    }

    private final Object yieldIfNeeded(SequenceScope<? super Path> sequenceScope, PathNode node, DirectoryEntriesReader entriesReader, Function1<? super List<PathNode>, Unit> function1, Continuation<? super Unit> continuation) throws FileSystemLoopException {
        Path path = node.getPath();
        LinkOption[] linkOptions = getLinkOptions();
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            if (!PathTreeWalkKt.createsCycle(node)) {
                if (getIncludeDirectories()) {
                    InlineMarker.mark(0);
                    sequenceScope.yield(path, continuation);
                    InlineMarker.mark(1);
                }
                LinkOption[] linkOptions2 = getLinkOptions();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptions2, linkOptions2.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    function1.invoke(entriesReader.readEntries(node));
                }
            } else {
                throw new FileSystemLoopException(path.toString());
            }
        } else if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            InlineMarker.mark(0);
            sequenceScope.yield(path, continuation);
            InlineMarker.mark(1);
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$dfsIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PathTreeWalk.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3}, l = {184, DownloaderService.STATUS_PENDING, 199, 205}, m = "invokeSuspend", n = {"$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "path$iv", "$this$iterator", "stack", "entriesReader", "$this$iterator", "stack", "entriesReader", "pathNode", "this_$iv", "path$iv", "$this$iterator", "stack", "entriesReader"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2"})
    static final class C00331 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        C00331(Continuation<? super C00331> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00331 c00331 = PathTreeWalk.this.new C00331(continuation);
            c00331.L$0 = obj;
            return c00331;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C00331) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0131  */
        /* JADX WARN: Code duplicated, block: B:35:0x017d  */
        /* JADX WARN: Code duplicated, block: B:41:0x01be  */
        /* JADX WARN: Code duplicated, block: B:43:0x01c4  */
        /* JADX WARN: Code duplicated, block: B:45:0x01dc A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x01dd  */
        /* JADX WARN: Code duplicated, block: B:48:0x01f1 A[PHI: r2 r5 r7 r8 r9 r10 r13
          0x01f1: PHI (r2v7 kotlin.io.path.PathTreeWalk$dfsIterator$1) = (r2v8 kotlin.io.path.PathTreeWalk$dfsIterator$1), (r2v9 kotlin.io.path.PathTreeWalk$dfsIterator$1) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r5v26 'pathNode' kotlin.io.path.PathNode) = (r5v27 'pathNode' kotlin.io.path.PathNode), (r5v36 'pathNode' kotlin.io.path.PathNode) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r7v14 'this_$iv' kotlin.io.path.PathTreeWalk) = (r7v23 'this_$iv' kotlin.io.path.PathTreeWalk), (r7v27 'this_$iv' kotlin.io.path.PathTreeWalk) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r8v13 'entriesReader' kotlin.io.path.DirectoryEntriesReader) = 
          (r8v15 'entriesReader' kotlin.io.path.DirectoryEntriesReader)
          (r8v16 'entriesReader' kotlin.io.path.DirectoryEntriesReader)
         binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r9v11 'stack' kotlin.collections.ArrayDeque) = (r9v13 'stack' kotlin.collections.ArrayDeque), (r9v14 'stack' kotlin.collections.ArrayDeque) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r10v12 '$this$iterator' kotlin.sequences.SequenceScope) = (r10v14 '$this$iterator' kotlin.sequences.SequenceScope), (r10v15 '$this$iterator' kotlin.sequences.SequenceScope) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]
          0x01f1: PHI (r13v10 'path$iv' java.nio.file.Path) = (r13v13 'path$iv' java.nio.file.Path), (r13v14 'path$iv' java.nio.file.Path) binds: [B:47:0x01e7, B:42:0x01c2] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:50:0x0209  */
        /* JADX WARN: Code duplicated, block: B:51:0x021b  */
        /* JADX WARN: Code duplicated, block: B:66:0x01b8 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:69:0x0191 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0207 -> B:33:0x0173). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0209 -> B:33:0x0173). Please report as a decompilation issue!!! */
        /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
            java.lang.StackOverflowError
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r18) {
            /*
                Method dump skipped, instruction units count: 622
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk.C00331.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Iterator<Path> dfsIterator() {
        return SequencesKt.iterator(new C00331(null));
    }

    /* JADX INFO: renamed from: kotlin.io.path.PathTreeWalk$bfsIterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: PathTreeWalk.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1}, l = {184, DownloaderService.STATUS_PENDING}, m = "invokeSuspend", n = {"$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "path$iv", "$this$iterator", "queue", "entriesReader"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = PathTreeWalk.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0096  */
        /* JADX WARN: Code duplicated, block: B:15:0x00c2  */
        /* JADX WARN: Code duplicated, block: B:17:0x00c8  */
        /* JADX WARN: Code duplicated, block: B:19:0x00df A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:22:0x00f4 A[PHI: r2 r5 r6 r7 r8 r10 r13
          0x00f4: PHI (r2v3 kotlin.io.path.PathTreeWalk$bfsIterator$1) = (r2v4 kotlin.io.path.PathTreeWalk$bfsIterator$1), (r2v5 kotlin.io.path.PathTreeWalk$bfsIterator$1) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r5v3 'pathNode' kotlin.io.path.PathNode) = (r5v6 'pathNode' kotlin.io.path.PathNode), (r5v12 'pathNode' kotlin.io.path.PathNode) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r6v4 'entriesReader' kotlin.io.path.DirectoryEntriesReader) = 
          (r6v6 'entriesReader' kotlin.io.path.DirectoryEntriesReader)
          (r6v7 'entriesReader' kotlin.io.path.DirectoryEntriesReader)
         binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r7v4 'queue' kotlin.collections.ArrayDeque) = (r7v6 'queue' kotlin.collections.ArrayDeque), (r7v7 'queue' kotlin.collections.ArrayDeque) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r8v6 '$this$iterator' kotlin.sequences.SequenceScope) = (r8v8 '$this$iterator' kotlin.sequences.SequenceScope), (r8v9 '$this$iterator' kotlin.sequences.SequenceScope) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r10v5 'this_$iv' kotlin.io.path.PathTreeWalk) = (r10v11 'this_$iv' kotlin.io.path.PathTreeWalk), (r10v12 'this_$iv' kotlin.io.path.PathTreeWalk) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x00f4: PHI (r13v0 'path$iv' java.nio.file.Path) = (r13v1 'path$iv' java.nio.file.Path), (r13v2 'path$iv' java.nio.file.Path) binds: [B:21:0x00ea, B:16:0x00c6] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:24:0x010c  */
        /* JADX WARN: Code duplicated, block: B:25:0x011a  */
        /* JADX WARN: Code duplicated, block: B:27:0x0124  */
        /* JADX WARN: Code duplicated, block: B:32:0x0150  */
        /* JADX WARN: Code duplicated, block: B:37:0x0137 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:38:0x00bc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:39:0x014f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:41:0x008b A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x010a -> B:9:0x008b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x010c -> B:9:0x008b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:20:0x00e0
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r18) {
            /*
                Method dump skipped, instruction units count: 352
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Iterator<Path> bfsIterator() {
        return SequencesKt.iterator(new AnonymousClass1(null));
    }
}
