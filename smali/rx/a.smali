.class public Lrx/a;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lrx/g/b;


# instance fields
.field final a:Lrx/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    .line 17113
    iget-object v0, v1, Lrx/g/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17115
    const-class v0, Lrx/g/b;

    invoke-static {v0}, Lrx/g/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 17116
    if-nez v0, :cond_1

    .line 17118
    iget-object v0, v1, Lrx/g/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/g/c;->a()Lrx/g/b;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17125
    :cond_0
    :goto_0
    iget-object v0, v1, Lrx/g/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/g/b;

    .line 64
    sput-object v0, Lrx/a;->b:Lrx/g/b;

    return-void

    .line 17122
    :cond_1
    iget-object v2, v1, Lrx/g/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/g/b;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Lrx/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/a;->a:Lrx/b;

    .line 62
    return-void
.end method

.method public static final a(Ljava/lang/Iterable;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Lrx/d/a/c;

    invoke-direct {v0, p0}, Lrx/d/a/c;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a;Lrx/a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/a",
            "<+TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1674
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a;Lrx/a;Lrx/a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/a",
            "<+TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/c/k;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+TT1;>;",
            "Lrx/a",
            "<+TT2;>;",
            "Lrx/a",
            "<+TT3;>;",
            "Lrx/a",
            "<+TT4;>;",
            "Lrx/a",
            "<+TT5;>;",
            "Lrx/a",
            "<+TT6;>;",
            "Lrx/c/k",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2813
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 11262
    invoke-static {v0}, Lrx/d/c/h;->a(Ljava/lang/Object;)Lrx/d/c/h;

    move-result-object v0

    .line 2813
    new-instance v1, Lrx/d/a/am;

    invoke-direct {v1, p6}, Lrx/d/a/am;-><init>(Lrx/c/k;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/c/j;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+TT1;>;",
            "Lrx/a",
            "<+TT2;>;",
            "Lrx/a",
            "<+TT3;>;",
            "Lrx/a",
            "<+TT4;>;",
            "Lrx/a",
            "<+TT5;>;",
            "Lrx/c/j",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2771
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 10262
    invoke-static {v0}, Lrx/d/c/h;->a(Ljava/lang/Object;)Lrx/d/c/h;

    move-result-object v0

    .line 2771
    new-instance v1, Lrx/d/a/am;

    invoke-direct {v1, p5}, Lrx/d/a/am;-><init>(Lrx/c/j;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/a;Lrx/a;Lrx/c/g;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+TT1;>;",
            "Lrx/a",
            "<+TT2;>;",
            "Lrx/c/g",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2657
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 9262
    invoke-static {v0}, Lrx/d/c/h;->a(Ljava/lang/Object;)Lrx/d/c/h;

    move-result-object v0

    .line 2657
    new-instance v1, Lrx/d/a/am;

    invoke-direct {v1, p2}, Lrx/d/a/am;-><init>(Lrx/c/g;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b",
            "<TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lrx/a;

    invoke-static {p0}, Lrx/g/b;->a(Lrx/b;)Lrx/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/b;)V

    return-object v0
.end method

.method public static final b()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {p0}, Lrx/d/c/h;->a(Ljava/lang/Object;)Lrx/d/c/h;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/Throwable;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v0, Lrx/d;

    invoke-direct {v0, p0}, Lrx/d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(Lrx/a;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<+",
            "Lrx/a",
            "<+TT;>;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1622
    new-instance v0, Lrx/d/a/o;

    invoke-direct {v0}, Lrx/d/a/o;-><init>()V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j()Lrx/g/b;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lrx/a;->b:Lrx/g/b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3053
    .line 12079
    new-instance v0, Lrx/d/a/f;

    invoke-direct {v0, p1, p1}, Lrx/d/a/f;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 3053
    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8216
    invoke-static {}, Lrx/h/p;->b()Lrx/g;

    move-result-object v0

    .line 16267
    new-instance v1, Lrx/d/a/ae;

    invoke-direct {v1, p1, p2, p3, v0}, Lrx/d/a/ae;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V

    invoke-virtual {p0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 8216
    return-object v0
.end method

.method public final a(Lrx/a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a",
            "<+TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3532
    .line 13286
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 13761
    new-instance v1, Lrx/d/a/g;

    invoke-direct {v1}, Lrx/d/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 3532
    return-object v0
.end method

.method public final a(Lrx/c/b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4110
    new-instance v0, Lrx/a$2;

    invoke-direct {v0, p0, p1}, Lrx/a$2;-><init>(Lrx/a;Lrx/c/b;)V

    .line 4126
    new-instance v1, Lrx/d/a/l;

    invoke-direct {v1, v0}, Lrx/d/a/l;-><init>(Lrx/e;)V

    invoke-virtual {p0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/f;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4352
    new-instance v0, Lrx/d/a/m;

    invoke-direct {v0, p1}, Lrx/d/a/m;-><init>(Lrx/c/f;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/g;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/g",
            "<TT;TT;TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5376
    .line 15411
    new-instance v0, Lrx/d/a/y;

    invoke-direct {v0, p1}, Lrx/d/a/y;-><init>(Lrx/c/g;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 5376
    invoke-virtual {v0}, Lrx/a;->e()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c",
            "<+TR;-TT;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1, p0, p1}, Lrx/a$1;-><init>(Lrx/a;Lrx/c;)V

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/b;)V

    return-object v0
.end method

.method public final a(Lrx/g;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5014
    new-instance v0, Lrx/d/a/t;

    invoke-direct {v0, p1}, Lrx/d/a/t;-><init>(Lrx/g;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/b;Lrx/c/b;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<-TT;>;",
            "Lrx/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 7166
    if-nez p1, :cond_0

    .line 7167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7173
    :cond_0
    new-instance v0, Lrx/a$7;

    invoke-direct {v0, p0, p2, p1}, Lrx/a$7;-><init>(Lrx/a;Lrx/c/b;Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/a;->b(Lrx/i;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/b;Lrx/c/b;Lrx/c/a;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<-TT;>;",
            "Lrx/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/a;",
            ")",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 7228
    new-instance v0, Lrx/a$8;

    invoke-direct {v0, p0, p3, p2, p1}, Lrx/a$8;-><init>(Lrx/a;Lrx/c/a;Lrx/c/b;Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/a;->b(Lrx/i;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/i;)Lrx/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 7302
    :try_start_0
    invoke-virtual {p1}, Lrx/i;->d()V

    .line 7304
    iget-object v0, p0, Lrx/a;->a:Lrx/b;

    invoke-static {v0}, Lrx/g/b;->b(Lrx/b;)Lrx/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Object;)V

    .line 7305
    invoke-static {p1}, Lrx/g/b;->a(Lrx/j;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7324
    :goto_0
    return-object v0

    .line 7306
    :catch_0
    move-exception v0

    .line 7308
    invoke-static {v0}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 7311
    :try_start_1
    invoke-static {v0}, Lrx/g/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/b/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 7324
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    goto :goto_0

    .line 7314
    :catch_1
    move-exception v0

    throw v0

    .line 7315
    :catch_2
    move-exception v1

    .line 7318
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7322
    throw v2
.end method

.method public final b(I)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7479
    new-instance v0, Lrx/d/a/ac;

    invoke-direct {v0, p1}, Lrx/d/a/ac;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<-TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4144
    new-instance v0, Lrx/a$3;

    invoke-direct {v0, p0, p1}, Lrx/a$3;-><init>(Lrx/a;Lrx/c/b;)V

    .line 4160
    new-instance v1, Lrx/d/a/l;

    invoke-direct {v1, v0}, Lrx/d/a/l;-><init>(Lrx/e;)V

    invoke-virtual {p0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/f;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/f",
            "<-TT;+",
            "Lrx/a",
            "<+TR;>;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4481
    invoke-virtual {p0, p1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/g;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/g",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8600
    new-instance v0, Lrx/d/a/ak;

    invoke-direct {v0, p1}, Lrx/d/a/ak;-><init>(Lrx/c/g;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/g;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7435
    .line 16262
    invoke-static {p0}, Lrx/d/c/h;->a(Ljava/lang/Object;)Lrx/d/c/h;

    move-result-object v0

    .line 7435
    new-instance v1, Lrx/d/a/ab;

    invoke-direct {v1, p1}, Lrx/d/a/ab;-><init>(Lrx/g;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/i;)Lrx/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 7369
    iget-object v0, p0, Lrx/a;->a:Lrx/b;

    if-nez v0, :cond_0

    .line 7370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7378
    :cond_0
    invoke-virtual {p1}, Lrx/i;->d()V

    .line 7385
    instance-of v0, p1, Lrx/f/a;

    if-nez v0, :cond_1

    .line 7387
    new-instance v0, Lrx/f/a;

    invoke-direct {v0, p1}, Lrx/f/a;-><init>(Lrx/i;)V

    move-object p1, v0

    .line 7393
    :cond_1
    :try_start_0
    iget-object v0, p0, Lrx/a;->a:Lrx/b;

    invoke-static {v0}, Lrx/g/b;->b(Lrx/b;)Lrx/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Object;)V

    .line 7394
    invoke-static {p1}, Lrx/g/b;->a(Lrx/j;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7413
    :goto_0
    return-object v0

    .line 7395
    :catch_0
    move-exception v0

    .line 7397
    invoke-static {v0}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 7400
    :try_start_1
    invoke-static {v0}, Lrx/g/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/b/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 7413
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    goto :goto_0

    .line 7403
    :catch_1
    move-exception v0

    throw v0

    .line 7404
    :catch_2
    move-exception v1

    .line 7407
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7411
    throw v2
.end method

.method public final c()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3005
    new-instance v0, Lrx/d/a/e;

    invoke-direct {v0}, Lrx/d/a/e;-><init>()V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/f;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/f",
            "<-TT;+TR;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4949
    new-instance v0, Lrx/d/a/n;

    invoke-direct {v0, p1}, Lrx/d/a/n;-><init>(Lrx/c/f;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/b;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<-TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 7125
    new-instance v0, Lrx/a$6;

    invoke-direct {v0, p0, p1}, Lrx/a$6;-><init>(Lrx/a;Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/a;->b(Lrx/i;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3945
    new-instance v0, Lrx/d/a/k;

    invoke-static {}, Lrx/d/c/l;->a()Lrx/c/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/d/a/k;-><init>(Lrx/c/f;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/f;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/a",
            "<+TT;>;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5196
    new-instance v0, Lrx/d/a/x;

    invoke-direct {v0, p1}, Lrx/d/a/x;-><init>(Lrx/c/f;)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4836
    invoke-virtual {p0}, Lrx/a;->h()Lrx/a;

    move-result-object v0

    .line 14514
    new-instance v1, Lrx/d/a/z;

    invoke-direct {v1}, Lrx/d/a/z;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    .line 4836
    return-object v0
.end method

.method public final f()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5054
    new-instance v0, Lrx/d/a/w;

    invoke-direct {v0}, Lrx/d/a/w;-><init>()V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lrx/j;
    .locals 1

    .prologue
    .line 7083
    new-instance v0, Lrx/a$5;

    invoke-direct {v0, p0}, Lrx/a$5;-><init>(Lrx/a;)V

    invoke-virtual {p0, v0}, Lrx/a;->b(Lrx/i;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7567
    new-instance v0, Lrx/d/a/ad;

    invoke-direct {v0}, Lrx/d/a/ad;-><init>()V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8373
    new-instance v0, Lrx/d/a/aj;

    invoke-direct {v0}, Lrx/d/a/aj;-><init>()V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
