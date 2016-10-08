.class abstract Lrx/d/c/a/o;
.super Lrx/d/c/a/k;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/k",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final g:J


# instance fields
.field volatile h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    const-class v1, Lrx/d/c/a/o;

    const-string v2, "h"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lrx/d/c/a/o;->g:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lrx/d/c/a/k;-><init>(I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final d(J)V
    .locals 7

    .prologue
    .line 45
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/d/c/a/o;->g:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 46
    return-void
.end method
