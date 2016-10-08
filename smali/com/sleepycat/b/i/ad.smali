.class public final Lcom/sleepycat/b/i/ad;
.super Ljava/lang/Enum;
.source "SyncupProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26
    sput v3, Lcom/sleepycat/b/i/ad;->a:I

    .line 33
    sput v4, Lcom/sleepycat/b/i/ad;->b:I

    .line 39
    sput v5, Lcom/sleepycat/b/i/ad;->c:I

    .line 42
    sput v0, Lcom/sleepycat/b/i/ad;->d:I

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sleepycat/b/i/ad;->a:I

    aput v2, v0, v1

    sget v1, Lcom/sleepycat/b/i/ad;->b:I

    aput v1, v0, v3

    sget v1, Lcom/sleepycat/b/i/ad;->c:I

    aput v1, v0, v4

    sget v1, Lcom/sleepycat/b/i/ad;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/i/ad;->e:[I

    return-void
.end method
