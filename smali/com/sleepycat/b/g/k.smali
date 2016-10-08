.class final Lcom/sleepycat/b/g/k;
.super Lcom/sleepycat/b/g/v;
.source "FileHandleSource.java"


# instance fields
.field private b:Lcom/sleepycat/b/g/j;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/g/j;ILcom/sleepycat/b/g/m;)V
    .locals 7

    .prologue
    .line 22
    .line 1044
    iget-object v1, p1, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 1048
    iget-wide v4, p1, Lcom/sleepycat/b/g/j;->d:J

    .line 1052
    iget v6, p1, Lcom/sleepycat/b/g/j;->c:I

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/v;-><init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/b/g/m;JI)V

    .line 24
    iput-object p1, p0, Lcom/sleepycat/b/g/k;->b:Lcom/sleepycat/b/g/j;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sleepycat/b/g/k;->b:Lcom/sleepycat/b/g/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->a()V

    .line 35
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sleepycat/b/g/k;->b:Lcom/sleepycat/b/g/j;

    .line 2052
    iget v0, v0, Lcom/sleepycat/b/g/j;->c:I

    .line 38
    return v0
.end method
