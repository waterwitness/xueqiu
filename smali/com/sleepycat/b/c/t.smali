.class final Lcom/sleepycat/b/c/t;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# instance fields
.field private final a:Lcom/sleepycat/b/c/c;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/c;)V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Lcom/sleepycat/b/c/t;->a:Lcom/sleepycat/b/c/c;

    .line 798
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 803
    new-instance v2, Lcom/sleepycat/b/m;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {v2, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 804
    iget-object v0, p0, Lcom/sleepycat/b/c/t;->a:Lcom/sleepycat/b/c/c;

    sget-object v6, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 810
    return-object v1
.end method
