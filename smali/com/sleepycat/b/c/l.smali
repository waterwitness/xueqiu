.class final Lcom/sleepycat/b/c/l;
.super Lcom/sleepycat/b/c/ay;
.source "DatabaseImpl.java"


# instance fields
.field private final a:Lcom/sleepycat/b/l/j;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/c/i;JZLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/l/j;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1694
    new-array v0, v2, [Lcom/sleepycat/b/c/i;

    aput-object p1, v0, v3

    new-array v1, v2, [J

    aput-wide p2, v1, v3

    invoke-direct {p0, v0, v2, v1, p5}, Lcom/sleepycat/b/c/ay;-><init>([Lcom/sleepycat/b/c/i;Z[JLcom/sleepycat/b/c/bc;)V

    .line 1701
    iput-boolean p4, p0, Lcom/sleepycat/b/c/l;->e:Z

    .line 1702
    iput-object p6, p0, Lcom/sleepycat/b/c/l;->a:Lcom/sleepycat/b/l/j;

    .line 1703
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/c/i;JZLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/l/j;B)V
    .locals 0

    .prologue
    .line 1683
    invoke-direct/range {p0 .. p6}, Lcom/sleepycat/b/c/l;-><init>(Lcom/sleepycat/b/c/i;JZLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/l/j;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/sleepycat/b/c/l;->a:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/sleepycat/b/c/l;->a:Lcom/sleepycat/b/l/j;

    .line 2531
    sget-object v1, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/l;->a:Lcom/sleepycat/b/l/j;

    return-object v0
.end method
