.class public final Lcom/sleepycat/b/l/q;
.super Lcom/sleepycat/b/g/al;
.source "INLogItem.java"


# instance fields
.field public j:Lcom/sleepycat/b/l/j;

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sleepycat/b/g/al;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/l/q;->k:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/l/q;->l:Z

    return-void
.end method
