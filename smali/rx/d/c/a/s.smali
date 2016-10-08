.class abstract Lrx/d/c/a/s;
.super Lrx/d/c/a/u;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/u",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final j:J


# instance fields
.field protected f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    const-class v1, Lrx/d/c/a/s;

    const-string v2, "f"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lrx/d/c/a/s;->j:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lrx/d/c/a/u;-><init>(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    .prologue
    .line 81
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/d/c/a/s;->j:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method
