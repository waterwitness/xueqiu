.class public abstract Lcom/sleepycat/b/i/i/j;
.super Ljava/lang/Object;
.source "VLSNIndex.java"


# instance fields
.field public b:Lcom/sleepycat/b/i/i/c;

.field public final c:Lcom/sleepycat/b/i/i/f;

.field public d:I


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/i/f;)V
    .locals 1

    .prologue
    .line 2082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2083
    iput-object p1, p0, Lcom/sleepycat/b/i/i/j;->c:Lcom/sleepycat/b/i/i/f;

    .line 2084
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/i/j;->d:I

    .line 2085
    return-void
.end method
