.class abstract Lrx/d/c/a/j;
.super Lrx/d/c/a/l;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/l",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    const-class v1, Lrx/d/c/a/j;

    const-string v2, "f"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lrx/d/c/a/j;->e:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lrx/d/c/a/l;-><init>(I)V

    .line 76
    return-void
.end method


# virtual methods
.method protected final a(JJ)Z
    .locals 9

    .prologue
    .line 83
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/d/c/a/j;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
