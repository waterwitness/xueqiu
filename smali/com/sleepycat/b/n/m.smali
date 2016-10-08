.class public final Lcom/sleepycat/b/n/m;
.super Ljava/lang/Object;
.source "LockResult.java"


# instance fields
.field public a:Lcom/sleepycat/b/n/h;

.field public b:Lcom/sleepycat/b/n/am;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/am;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 23
    iput-object p2, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(JZZ)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 1094
    iget-boolean v0, v0, Lcom/sleepycat/b/n/am;->e:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 2077
    iput-wide p1, v0, Lcom/sleepycat/b/n/am;->a:J

    .line 42
    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 3069
    iput-boolean p3, v0, Lcom/sleepycat/b/n/am;->b:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 3106
    iput-boolean p4, v0, Lcom/sleepycat/b/n/am;->f:Z

    .line 45
    iget-object v0, p0, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 4098
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sleepycat/b/n/am;->e:Z

    .line 47
    :cond_1
    return-void
.end method
