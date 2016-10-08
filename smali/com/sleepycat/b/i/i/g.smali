.class public final Lcom/sleepycat/b/i/i/g;
.super Lcom/sleepycat/b/i/i/j;
.source "VLSNIndex.java"


# static fields
.field public static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2102
    const-class v0, Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/i/f;)V
    .locals 0

    .prologue
    .line 2105
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/j;-><init>(Lcom/sleepycat/b/i/i/f;)V

    .line 2106
    return-void
.end method
