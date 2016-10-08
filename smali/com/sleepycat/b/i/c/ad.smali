.class public Lcom/sleepycat/b/i/c/ad;
.super Lcom/sleepycat/b/i/c/ay;
.source "RepGroupProtocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/x;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ad;->a:Lcom/sleepycat/b/i/c/x;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/ay;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ad;->a:Lcom/sleepycat/b/i/c/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/x;->d:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ad;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ad;->j:Ljava/lang/String;

    return-object v0
.end method
