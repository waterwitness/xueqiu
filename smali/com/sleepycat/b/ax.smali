.class public final Lcom/sleepycat/b/ax;
.super Ljava/lang/Enum;
.source "PreloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 139
    sput v0, Lcom/sleepycat/b/ax;->a:I

    .line 135
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sleepycat/b/ax;->a:I

    aput v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/ax;->b:[I

    return-void
.end method
