.class public Lcom/sleepycat/b/c/bb;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field final b:Lcom/sleepycat/b/l/j;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/sleepycat/b/c/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/bb;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/l/j;I)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-boolean v0, Lcom/sleepycat/b/c/bb;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/bb;->d:Z

    if-nez v0, :cond_1

    .line 1717
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 168
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/b/c/bb;->b:Lcom/sleepycat/b/l/j;

    .line 170
    iput p2, p0, Lcom/sleepycat/b/c/bb;->c:I

    .line 171
    return-void
.end method


# virtual methods
.method a()Lcom/sleepycat/b/l/c;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method b()J
    .locals 2

    .prologue
    .line 183
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method c()J
    .locals 2

    .prologue
    .line 187
    sget v0, Lcom/sleepycat/b/c/ao;->m:I

    sget v1, Lcom/sleepycat/b/c/ao;->U:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
