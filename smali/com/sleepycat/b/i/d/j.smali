.class public Lcom/sleepycat/b/i/d/j;
.super Lcom/sleepycat/b/i/d/l;
.source "Protocol.java"


# instance fields
.field final synthetic b:Lcom/sleepycat/b/i/d/g;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sleepycat/b/i/d/j;->b:Lcom/sleepycat/b/i/d/g;

    .line 164
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/i/d/l;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;J)V

    .line 165
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/d/j;->b:Lcom/sleepycat/b/i/d/g;

    iget-object v0, v0, Lcom/sleepycat/b/i/d/g;->b:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/sleepycat/b/i/d/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
