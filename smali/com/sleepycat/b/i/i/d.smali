.class final Lcom/sleepycat/b/i/i/d;
.super Ljava/util/ArrayList;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1067
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/i/i/d;->removeRange(II)V

    .line 1075
    return-void
.end method
