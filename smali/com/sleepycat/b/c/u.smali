.class final Lcom/sleepycat/b/c/u;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# instance fields
.field a:I

.field private final b:Lcom/sleepycat/b/c/i;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 1989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1990
    iput-object p1, p0, Lcom/sleepycat/b/c/u;->b:Lcom/sleepycat/b/c/i;

    .line 1991
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/c/u;->a:I

    .line 1992
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1997
    if-nez p1, :cond_0

    .line 2002
    :goto_0
    return-object v1

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/u;->b:Lcom/sleepycat/b/c/i;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 2610
    iget v0, v0, Lcom/sleepycat/b/l/j;->j:I

    .line 2001
    iput v0, p0, Lcom/sleepycat/b/c/u;->a:I

    goto :goto_0
.end method
