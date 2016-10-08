.class abstract Lrx/d/c/a/w;
.super Lrx/d/c/a/t;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/t",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final g:J


# instance fields
.field protected h:J

.field protected i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    const-class v1, Lrx/d/c/a/w;

    const-string v2, "h"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lrx/d/c/a/w;->g:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lrx/d/c/a/t;-><init>(I)V

    .line 51
    return-void
.end method
